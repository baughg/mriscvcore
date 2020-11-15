#pragma once
#include "m2_model.h"
#include "elfbase.h"
#include "elf_string_table.h"
#include "elf_section_description.h"
#include <map>
#include <cstdio>
#include <algorithm>
#include <vector>
#include <string>

namespace elf {
#pragma pack(push)
#pragma pack(1)
	template <typename T>
	struct elf_header_middle_common {
		T e_entry;	/*This is the memory address of the entry
							point from where the process starts executing.
							This field is either 32 or 64 bits long
							depending on the format defined earlier.*/

		T e_phoff;	/*Points to the start of the program header
							table. It usually follows the file header
							immediately making the offset 0x40 for 64-bit
							ELF executables.*/

		T e_shoff;	/*Points to the start of the section header
							table.*/
	};

	typedef struct {
		uint64_t e_entry;  /* Entry point address */
		uint64_t e_phoff; /* Program header offset */
		uint64_t e_shoff; /* Section header offset */
	} elf_header_middle_common64;

	template <typename T>
	struct elf_header {
		elf_header_top_common t;
		elf_header_middle_common<T> m;
		elf_header_bottom_common b;
	};

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

	template <typename T>
	struct elf_program_header
	{
		program_type p_type;	/* Identifies the type of the segment.*/
		u32 p_offset;			/* Offset of the segment in the file image.*/
		T p_vaddr;			/* Virtual address of the segment in memory.*/
		T p_paddr;			/* On systems where physical address is relevant, reserved for segment's physical address.*/
		u32 p_filesz;			/* Size in bytes of the segment in the file image.May be 0.*/
		u32 p_memsz;			/* Size in bytes of the segment in memory.May be 0.*/
		u32 p_flags;			/* Segment - dependent flags.*/
		u32 p_align;			/* 0 and 1 specify no alignment.Otherwise should be a positive, integral power of 2, with
								p_vaddr equating p_offset modulus p_align.*/
	};

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

	template <class IW>
	class ElfxIW : public ElfBase
	{
	public:
		ElfxIW();	
		bool read_header_from_file(std::string file_name);
		bool get_program_header();
		bool get_section_header();
		bool get_symbols();
		bool print_header_info();
		IW entry_address();
		std::vector<ElfSectionDescription<IW>> &section_description();
		bool cmx_dma_section(IW &addr, u32 &size);
		void lookup_symbol(std::string variable);
		std::deque<symbol_description*> &get_lookup_symbols();
		bool load_section(const IW &address, u32 &load_size, elf::ElfSectionDescription<IW> &desc);
	private:
		const u8 ei_class_{ sizeof(IW) == sizeof(uint32_t) ?
			static_cast<u8>(elf::ELF32) : static_cast<u8>(elf::ELF64) };

		elf_header<IW> header_;
		elf_header_middle_common<IW>* p_m_{};
		std::vector<elf_program_header<IW>> program_headers_;
		std::vector<elf_section_header<IW>> section_headers_;
		std::vector<ElfStringTable<IW>> string_tables_;
		ElfStringTable<IW>* p_sh_str_tab_{};
		ElfStringTable<IW>* p_sh_symstr_tab_{};
		std::vector<ElfSectionDescription<IW>> section_description_;
		ElfSectionDescription<IW>* p_symbol_section_{};
		ElfSectionDescription<IW>* p_cmx_dma_section_{};
		std::vector<elf32_symbol> symbols_;
		std::vector<symbol_description> symbol_descriptions_;
		std::deque<std::string> lookup_symbols_;
		std::deque<symbol_description*> lookup_symbol_descriptions_;
	};
}

#include "elfxIW.hpp"

