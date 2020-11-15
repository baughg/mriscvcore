#ifndef ELF_SECTION_DESCRIPTION_H
#define ELF_SECTION_DESCRIPTION_H
#include "elfbase.h"

namespace elf {
	template <class IW>
	class ElfSectionDescription
	{
	public:		
		void set_section_info(std::string name, elf_section_header<IW> &sh);
    u32 file_offset();
    u32 file_size();
    IW address();
    std::string section_name();
    elf::section_type type();
    bool is_code();
	private:
		elf_section_header<IW>* p_section_header_{};
		std::string section_name_;
	};

	template <class IW>
	void ElfSectionDescription<IW>::set_section_info(std::string name, elf_section_header<IW> &sh)
	{
		p_section_header_ = &sh;
		section_name_ = name;
	}

	template <class IW>
	u32 ElfSectionDescription<IW>::file_offset()
	{
		if (!p_section_header_)
			return 0;

		return p_section_header_->sh_offset;
	}

	template <class IW>
	u32 ElfSectionDescription<IW>::file_size()
	{
		if (!p_section_header_)
			return 0;

		return p_section_header_->sh_size;
	}

	template <class IW>
	std::string ElfSectionDescription<IW>::section_name()
	{
		return section_name_;
	}

	template <class IW>
	bool ElfSectionDescription<IW>::is_code()
	{
		if (!p_section_header_)
			return false;

		return (p_section_header_->sh_flags & elf::SHF_EXECINSTR) == elf::SHF_EXECINSTR;
	}

	template <class IW>
	elf::section_type ElfSectionDescription<IW>::type()
	{
		if (!p_section_header_)
			return elf::SHT_NULL;

		return (elf::section_type)p_section_header_->sh_type;
	}

	template <class IW>
	IW ElfSectionDescription<IW>::address()
	{
		if (!p_section_header_)
			return 0;

		return (elf::section_type)p_section_header_->sh_addr;
	}
};

#endif