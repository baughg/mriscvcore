// riscv_app.cpp : Defines the entry point for the console application.
//

#include "elf/elf32.h"
#include "common/elf_section.h"
#include "memory/flat_memory.h"
#include "memory/memory_model.h"
#include <string>

int main(int argc, char** argv)
{
  elf::Elf32 elf;

  if(argc < 2)
  {
    printf("riscv_app [application.elf]\n");
    exit(0);
  }

  std::string elf_filename = std::string(argv[1]);

  if (elf.read_header_from_file(elf_filename))
  {
    elf.get_program_header();
    elf.get_section_header();
    elf.get_symbols();
    u32 entry_address = elf.entry_address();

    std::vector<elf::ElfSectionDescription> section_desc = elf.section_description();
    std::vector<ElfSection> elf_sections;
    FlatMemory memory;
    memory.set_entry_address(entry_address);
    size_t sections = section_desc.size();
    u32 section_size = 0, section_address = 0, file_offset = 0;
    elf_sections.resize(sections);
    u32 sec_ind = 0;

    for (size_t sec = 0; sec < sections; ++sec)
    {
      section_size = section_desc[sec].file_size();
      section_address = section_desc[sec].address();
      //Myriad::uncached_address(section_address);

      if ((
        (section_desc[sec].type() == elf::SHT_PROGBITS) ||
        (section_desc[sec].type() == elf::SHT_NOBITS)) &&
        (section_size) && (section_address))
      {
        file_offset = section_desc[sec].file_offset();
        elf_sections[sec_ind].create(section_desc[sec].section_name(), elf_filename, file_offset, section_size);
        elf_sections[sec_ind].set_description(section_desc[sec]);
        elf_sections[sec_ind].set_address_range(section_address);   
        elf_sections[sec_ind].set_as_code(section_desc[sec].is_code());
        sec_ind++;
      }
    }

    while (elf_sections.size() > sec_ind)
      elf_sections.pop_back();
    
   memory.add_elf_sections(elf_sections);
   memory.write_to_file("flat_memory.bin");
   //memory.read_from_file("flat_memory.bin");
   MemoryModel mem_model;
   mem_model.load("flat_memory.bin");
  }
  return 0;
}

