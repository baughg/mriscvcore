#ifndef ELFBASE_H
#define ELFBASE_H

#include "defs.h"

namespace elf {
  typedef enum {
    ELF32 = 1,
    ELF64
  }elf_type;

  typedef enum {
    LITTLE_ENDIAN_ELF = 1,
    BIG_ENDIAN_ELF
  }endianness;

  typedef enum {
    SystemV,
    HP_UX,
    NetBSD,
    Linux,
    Solaris,
    AIX,
    IRIX,
    FreeBSD,
    OpenBSD,
    OpenVMS
  }os_abi;

  typedef enum {
    RELOCATABLE = 1,
    EXECUTABLE,
    SHARED,
    CORE
  }object_type;

  typedef enum {
    SPARC = 0x02,
    X86 = 0x03,
    MIPS = 0x08,
    PowerPC = 0x14,
    ARM = 0x28,
    SuperH = 0x2A,
    IA_64 = 0x32,
    x86_64 = 0x3E,
    AArch64 = 0xB7
  }isa;

#pragma pack(push)
#pragma pack(1)
  typedef struct
  {
    u32 ei_mag;		    /* 0x7F followed by ELF in ASCII; these four
                      bytes constitute the magic number.*/

    u8 ei_class;		  /* This byte is set to either 1 or 2 to signify
                      32- or 64-bit format, respectively.*/

    u8 ei_data;		    /* This byte is set to either 1 or 2 to signify
                      little or big endianness, respectively. This
                      affects interpretation of multi-byte fields
                      starting with offset 0x10.*/

    u8 ei_version;		/* Set to 1 for the original version of ELF.*/

    u8 ei_osabi;		  /* Identifies the target operating system ABI.
                      0x00	System V
                      0x01	HP-UX
                      0x02	NetBSD
                      0x03	Linux
                      0x06	Solaris
                      0x07	AIX
                      0x08	IRIX
                      0x09	FreeBSD
                      0x0C	OpenBSD
                      0x0D	OpenVMS
                      It is often set to 0 regardless of the target
                      platform.*/

    u8 ei_abiversion;	/* Further specifies the ABI version. Its interpretation
                      depends on the target ABI. Linux kernel (after at
                      least 2.6) has no definition of it.[4] In that
                      case, offset and size of EI_PAD are 8.*/
    u8 ei_pad[7];
    u16 e_type;		    /* 1, 2, 3, 4 specify whether the object is relocatable,
                      executable, shared, or core, respectively.*/

    u16 e_machine;		/*Specifies target instruction set architecture. Some examples are:
                      Value	ISA
                      0x02	SPARC
                      0x03	x86
                      0x08	MIPS
                      0x14	PowerPC
                      0x28	ARM
                      0x2A	SuperH
                      0x32	IA-64
                      0x3E	x86-64
                      0xB7	AArch64
                      */

    u32 e_version;		/*Set to 1 for the original version of ELF.*/
  }elf_header_top_common;

  typedef struct {
    u32 e_flags;		    /* Interpretation of this field depends on the target architecture.*/

    u16 e_ehsize;		    /* Contains the size of this header, normally 64 bytes for 64-bit
                        and 52 for 32-bit format.*/

    u16 e_phentsize;	  /* Contains the size of a program header table entry.*/

    u16 e_phnum;		    /* Contains the number of entries in the program header table.*/

    u16 e_shentsize;	  /* Contains the size of a section header table entry.*/

    u16 e_shnum;		    /* Contains the number of entries in the section header table.*/

    u16 e_shstrndx;		  /* Contains index of the section header table entry that
                        contains the section names.*/
  }elf_header_bottom_common;

#pragma pack(pop)


  typedef enum
  {
    SHT_NULL,			            // Section header table entry unused
    SHT_PROGBITS,		          // Program data
    SHT_SYMTAB,			          // Symbol table
    SHT_STRTAB,			          // String table
    SHT_RELA,			            // Relocation entries with addends
    SHT_HASH,			            // Symbol hash table
    SHT_DYNAMIC,		          // Dynamic linking information
    SHT_NOTE,			            // Notes
    SHT_NOBITS,			          // Program space with no data(bss)
    SHT_REL,			            // Relocation entries, no addends
    SHT_SHLIB,			          // Reserved
    SHT_DYNSYM,			          // Dynamic linker symbol table
    SHT_INIT_ARRAY,		        // Array of constructors
    SHT_FINI_ARRAY,		        // Array of destructors
    SHT_PREINIT_ARRAY,	      // Array of pre - constructors
    SHT_GROUP,			          // Section group
    SHT_SYMTAB_SHNDX,	        // Extended section indeces
    SHT_NUM,			            // Number of defined types.
    SHT_LOOS = 0x60000000	    // Start OS - specific.
  }section_type;

  typedef enum {
    SHF_WRITE = 0x1,                // Writable
    SHF_ALLOC = 0x2,				        // Occupies memory during execution
    SHF_EXECINSTR = 0x4,			      // Executable
    SHF_MERGE = 0x10,				        // Might be merged
    SHF_STRINGS = 0x20,				      // Contains nul - terminated strings
    SHF_INFO_LINK = 0x40,			      // 'sh_info' contains SHT index
    SHF_LINK_ORDER = 0x80,			    // Preserve order after combining
    SHF_OS_NONCONFORMING = 0x100,	  // Non - standard OS specific handling required
    SHF_GROUP = 0x200,				      // Section is member of a group
    SHF_TLS = 0x400,				        // Section hold thread - local data
    SHF_MASKOS = 0x0ff00000,		    // OS - specific
    SHF_MASKPROC = 0xf0000000,		  // Processor - specific
    SHF_ORDERED = 0x4000000,		    // Special ordering requirement(Solaris)
    SHF_EXCLUDE = 0x8000000			    // Section is excluded unless referenced or allocated(Solaris)
  }section_flags;

  typedef struct
  {
    u32 sh_name;				    /* An offset to a string in the.shstrtab section that represents the name of this section*/

    section_type sh_type;		/* Identifies the type of this header.*/

    u32 sh_flags;				    /* Identifies the attributes of the section.*/

    u32 sh_addr; 				    /* Virtual address of the section in memory, for sections that are loaded.*/

    u32 sh_offset;				  /* Offset of the section in the file image. */

    u32 sh_size;				    /* Size in bytes of the section in the file image.May be 0. */

    u32 sh_link;				    /* Contains the section index of an associated section.This field is used for several
                            purposes, depending on the type of section.*/

    u32 sh_info;				    /* Contains extra information about the section.This field is used for several purposes,
                            depending on the type of section.*/

    u32 sh_addralign;			  /* Contains the required alignment of the section.This field must be a power of two. */

    u32 sh_entsize;				  /* Contains the size, in bytes, of each entry, for sections that contain fixed - size
                            entries.Otherwise, this field contains zero. */
  }elf32_section_header;

  typedef struct {
    u32 st_name;
    u32 st_value;
    u32 st_size;
    u8 st_info;
    u8 st_other;
    u16 st_shndx;
  } elf32_symbol;

  typedef enum {
    STT_NOTYPE,               /* The symbol type is not specified*/

    STT_OBJECT,               /* This symbol is associated with a data object, such as a variable, an array, and so forth*/

    STT_FUNC,                 /* This symbol is associated with a function or other executable code.*/

    STT_SECTION,              /* This symbol is associated with a section. Symbol table entries of this type exist primarily for
                              relocation and normally have STB_LOCAL binding.*/

    STT_FILE,                 /* Conventionally, the symbol's name gives the name of the source file that is associated with
                              the object file. A file symbol has STB_LOCAL binding and a section index of SHN_ABS. This
                              symbol, if present, precedes the other STB_LOCAL symbols for the file.
                              Symbol index 1 of the SHT_SYMTAB is an STT_FILE symbol representing the object file.
                              Conventionally, this symbol is followed by the files STT_SECTION symbols. These section
                              symbols are then followed by any global symbols that have been reduced to locals.*/

    STT_COMMON,               /* This symbol labels an uninitialized common block. This symbol is treated exactly the same
                              as STT_OBJECT.*/

    STT_TLS,                  /* The symbol specifies a thread-local storage entity. When defined, this symbol gives the
                              assigned offset for the symbol, not the actual address.
                              Thread-local storage relocations can only reference symbols with type STT_TLS. A reference
                              to a symbol of type STT_TLS from an allocatable section, can only be achieved by using
                              special thread-local storage relocations. See Chapter 14, “Thread-Local Storage,” for details.
                              A reference to a symbol of type STT_TLS from a non-allocatable section does not have this
                              restriction.*/

    STT_LOOS = 10,            /* Values in this inclusive range are reserved for operating system-specific semantics.*/
    STT_HIOS = 12,
    STT_LOPROC,               /* Values in this inclusive range are reserved for processor-specific semantics*/
    STT_SPARC_REGISTER = 13,
    STT_HIPROC = 15
  }symbol_type;

  typedef enum
  {
    STB_LOCAL,          /* Local symbol. These symbols are not visible outside the object file containing their
                        definition. Local symbols of the same name can exist in multiple files without interfering
                        with each other.*/

    STB_GLOBAL,         /* Global symbols. These symbols are visible to all object files being combined. One file's
                        definition of a global symbol satisfies another file's undefined reference to the same global
                        symbol.*/

    STB_WEAK,           /* Weak symbols. These symbols resemble global symbols, but their definitions have lower
                        precedence.*/

    STB_LOOS = 10,      /* Values in this inclusive range are reserved for operating system-specific semantics*/
    STB_HIOS = 12,
    STB_LOPROC,         /* Values in this inclusive range are reserved for processor-specific semantics.*/
    STB_HIPROC = 15
  }bind_type;

  typedef struct symbol_description {
    symbol_description()
    {
      save_operation = false;
    }

    std::string name;
    std::string load_file;
    std::string save_file;
    std::string section;
    symbol_type type;
    bind_type binding;
    bool save_operation;
    elf32_symbol* p_symbol;
  }symbol_description;

  class ElfBase
  {
  public:
    ElfBase();
    ~ElfBase();

    virtual bool read_header_from_file(std::string file_name);
    virtual bool print_header_info();
  protected:
    elf_header_top_common*		t;
    elf_header_bottom_common*	b;
    std::string elf_filename_;
  };
}
#endif

