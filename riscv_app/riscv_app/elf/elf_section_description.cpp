#include "elf_section_description.h"

using namespace elf;

ElfSectionDescription::ElfSectionDescription()
	: p_section_header_(NULL)
{

}

ElfSectionDescription::~ElfSectionDescription()
{

}

void ElfSectionDescription::set_section_info(std::string name, elf32_section_header &sh)
{
	p_section_header_ = &sh;
	section_name_ = name;
}

u32 ElfSectionDescription::file_offset()
{
  if (!p_section_header_)
    return 0;

  return p_section_header_->sh_offset;
}

u32 ElfSectionDescription::file_size()
{
  if (!p_section_header_)
    return 0;

  return p_section_header_->sh_size;
}

std::string ElfSectionDescription::section_name()
{
  return section_name_;
}

bool ElfSectionDescription::is_code()
{
  if (!p_section_header_)
    return false;

  return (p_section_header_->sh_flags & elf::SHF_EXECINSTR) == elf::SHF_EXECINSTR;
}

elf::section_type ElfSectionDescription::type()
{
  if (!p_section_header_)
    return elf::SHT_NULL;

  return (elf::section_type)p_section_header_->sh_type;
}

u32 ElfSectionDescription::address()
{
  if (!p_section_header_)
    return 0;

  return (elf::section_type)p_section_header_->sh_addr;
}