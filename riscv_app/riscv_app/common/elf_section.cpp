#include "elf_section.h"



ElfSection::ElfSection()
  : initialised_(false),
  is_code_(false),
	p_description_(NULL)
{
}

ElfSection::ElfSection(std::string name_, std::string filename, u32 offset, u32 size)
  : elf_filename(filename),
  file_offset(offset),
  section_size(size),
  section_name_(name_),
  initialised_(false),
  is_code_(false)
{
  init();
}

void ElfSection::create(std::string name, std::string filename, u32 offset, u32 size)
{
  elf_filename = filename;
  section_name_ = name;
  file_offset = offset;
  section_size = size;

  init();
}

ElfSection::~ElfSection()
{
}

u32 ElfSection::size_in_words()
{
  return section_size >> 2;
}

u32 ElfSection::size_in_bytes()
{
  return section_size;
}

void ElfSection::resize_data(u32 sec_size)
{
	section_size = sec_size;
	binary_image.resize(section_size);
}

u32* ElfSection::raw_data()
{
  if (!section_size)
    return NULL;

  return &binary_image[0];
}

std::string ElfSection::section_name()
{
  return section_name_;
}

elf::ElfSectionDescription & ElfSection::get_description()
{
	if (!p_description_)
	{
		static elf::ElfSectionDescription dummy;
		return dummy;
	}

	return *p_description_;
}

void ElfSection::set_description(elf::ElfSectionDescription &desc)
{
	p_description_ = &desc;
}

void ElfSection::set_address_range(u32 base_addr, bool cacheable)
{
  set_address_range(base_addr, base_addr + section_size - 1, cacheable);
}

u32 ElfSection::physical_address()
{
  return base_address_;
}

void ElfSection::set_address_range(u32 base_addr, u32 max_addr, bool cacheable)
{
  base_address_ = base_addr;
  max_address_ = max_addr;
  cacheable_ = cacheable;
}

void ElfSection::get_address_range(u32 &base_addr, u32 &max_addr)
{
  base_addr = base_address_;
  max_addr = max_address_;  
}

void ElfSection::init()
{
  FILE * elf_file = NULL;
  initialised_ = false;
  elf_file = fopen(elf_filename.c_str(), "rb");
  u32 word_size = section_size >> 2;
  base_address_ = 0;
  max_address_ = 0;
  cacheable_ = false;
  word_size++;

  binary_image.resize(word_size);
  
  if (!elf_file)
    return;

  fseek(elf_file, file_offset, SEEK_SET);
  size_t word_count = fread(&binary_image[0], sizeof(u32), word_size, elf_file);

  initialised_ = word_count == word_size;
  fclose(elf_file);
}

bool ElfSection::is_code()
{
  return is_code_;
}

void ElfSection::set_as_code(bool code)
{
  is_code_ = code;
}