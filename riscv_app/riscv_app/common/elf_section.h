#ifndef ELF_SECTION_H
#define ELF_SECTION_H
#include "defs.h"
#include "elf_section_description.h"

class ElfSection
{
public:
  ElfSection();
  ElfSection(std::string name, std::string filename, u32 offset, u32 size);
  ~ElfSection(); 
  void create(std::string name, std::string filename, u32 offset, u32 size);
  void set_address_range(u32 base_addr, bool cacheable = true);
  std::string section_name();
  u32 size_in_words();
  u32 size_in_bytes();
  u32* raw_data();
	void resize_data(u32 sec_size);
  bool is_code();
  void set_as_code(bool code);
	void set_description(elf::ElfSectionDescription &desc);
	elf::ElfSectionDescription & get_description();
  u32 physical_address();
  void get_address_range(u32 &base_addr, u32 &max_addr);
protected: 
  void set_address_range(u32 base_addr, u32 max_addr, bool cacheable);
  void init(); 
  std::string elf_filename;
  u32 file_offset;
  u32 section_size;
	elf::ElfSectionDescription *p_description_;
  std::string section_name_;
  std::vector<u32> binary_image;
  bool initialised_;
  bool is_code_;
  u32 base_address_;
  u32 max_address_;
  bool cacheable_;
};

#endif

