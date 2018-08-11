#ifndef ELF_SECTION_DESCRIPTION_H
#define ELF_SECTION_DESCRIPTION_H
#include "elfbase.h"

namespace elf {
	class ElfSectionDescription
	{
	public:
		ElfSectionDescription();
		~ElfSectionDescription();
		void set_section_info(std::string name, elf32_section_header &sh);
    u32 file_offset();
    u32 file_size();
    u32 address();
    std::string section_name();
    elf::section_type type();
    bool is_code();
	private:
		elf32_section_header* p_section_header_;
		std::string section_name_;
	};
};

#endif