#ifndef ELF_STRING_TABLE_H
#define ELF_STRING_TABLE_H
#include "elfbase.h"
#include <string>
#include <vector>

namespace elf {
	class ElfStringTable
	{
	public:
		ElfStringTable();
		~ElfStringTable();
		void set_section_header(elf32_section_header &sh);
		u32 load_strings(std::string elf_filename);
		bool is_section_string_table();
    bool is_section(elf32_section_header* p_sec);
		std::string get_string(u32 offset);
	private:
		std::vector<std::string> strings_;
		std::vector<u32> string_offset_;
		elf32_section_header* p_section_header_;
		bool is_shstrtab_;    
		std::vector<char> str_buf_;
	};

};
#endif
