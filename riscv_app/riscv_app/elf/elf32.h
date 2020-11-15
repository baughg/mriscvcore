#ifndef ELF32_H
#define ELF32_H
#include "m2_model.h"
#include "elfbase.h"
#include "elf_string_table.h"
#include "elf_section_description.h"
#include <map>

#include <vector>

namespace elf {
#pragma pack(push)
#pragma pack(1)
	typedef struct {
		uint32_t e_entry;	/*This is the memory address of the entry
							point from where the process starts executing.
							This field is either 32 or 64 bits long
							depending on the format defined earlier.*/

		uint32_t e_phoff;	/*Points to the start of the program header
							table. It usually follows the file header
							immediately making the offset 0x40 for 64-bit
							ELF executables.*/

		uint32_t e_shoff;	/*Points to the start of the section header
							table.*/
	} elf_header_middle_common;

	typedef struct {
		uint64_t e_entry;  /* Entry point address */
		uint64_t e_phoff; /* Program header offset */
		uint64_t e_shoff; /* Section header offset */
	} elf_header_middle_common64;

	typedef struct {
		elf_header_top_common t;
		elf_header_middle_common m;
		elf_header_bottom_common b;
	}elf32_header;

	typedef struct {
		elf_header_top_common t;
		elf_header_middle_common64 m;
		elf_header_bottom_common b;
	}elf64_header;
#pragma pack(pop)

	// PT_LOOS to PT_HIOS (PT_LOPROC to PT_HIPROC) is an inclusive reserved ranges for 
	// operating system (processor) specific semantics.
	typedef enum {
		PT_NULL = 0x0,
		PT_LOAD,
		PT_DYNAMIC,
		PT_INTERP,
		PT_NOTE,
		PT_SHLIB,
		PT_PHDR,
		PT_LOOS = 0x60000000,
		PT_HIOS = 0x6FFFFFFF,
		PT_LOPROC = 0x70000000,
		PT_HIPROC = 0x7FFFFFFF
	}program_type;

	typedef struct
	{
		program_type p_type;	/* Identifies the type of the segment.*/
		u32 p_offset;			/* Offset of the segment in the file image.*/
		u32 p_vaddr;			/* Virtual address of the segment in memory.*/
		u32 p_paddr;			/* On systems where physical address is relevant, reserved for segment's physical address.*/
		u32 p_filesz;			/* Size in bytes of the segment in the file image.May be 0.*/
		u32 p_memsz;			/* Size in bytes of the segment in memory.May be 0.*/
		u32 p_flags;			/* Segment - dependent flags.*/
		u32 p_align;			/* 0 and 1 specify no alignment.Otherwise should be a positive, integral power of 2, with
								p_vaddr equating p_offset modulus p_align.*/
	}elf32_program_header;

#define IS_C_PLUS_PLUS 1

  typedef struct function
  {
    function()
    {
      address = 0;
      trap_handler = 0;
      is_cplusplus = 0;
      elf_function = 0;
			colour = 0;
    }

    std::string name;
		std::string safe_name;
    std::string mangled_name;
    u32 address;
    u16 trap_handler;
    u16 is_cplusplus;
    u32 elf_function;
		u32 colour;
    std::map<function*, u32> parent_link;
    std::map<function*, u32> child_link;
  }function;

	class Elf32 : public ElfBase
	{
	public:
    Elf32();
		~Elf32();
		bool read_header_from_file(std::string file_name);
		bool get_program_header();
		bool get_section_header();
    bool get_symbols();
		bool print_header_info();
    u32 entry_address();
    std::vector<ElfSectionDescription> &section_description();    
    bool cmx_dma_section(u32 &addr, u32 &size);
    void lookup_symbol(std::string variable);
    std::deque<symbol_description*> &get_lookup_symbols();    
		bool load_section(const u32 &address, u32 &load_size, elf::ElfSectionDescription &desc);
	private:
		elf32_header header_;
		elf_header_middle_common* p_m_;
		std::vector<elf32_program_header> program_headers_;
		std::vector<elf32_section_header> section_headers_;
		std::vector<ElfStringTable> string_tables_;
		ElfStringTable* p_sh_str_tab_;
    ElfStringTable* p_sh_symstr_tab_;
		std::vector<ElfSectionDescription> section_description_;
    ElfSectionDescription* p_symbol_section_;
    ElfSectionDescription* p_cmx_dma_section_;
    std::vector<elf32_symbol> symbols_;
    std::vector<symbol_description> symbol_descriptions_;   
    std::deque<std::string> lookup_symbols_;
    std::deque<symbol_description*> lookup_symbol_descriptions_;   
	};
}
#endif

