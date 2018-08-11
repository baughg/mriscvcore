#ifndef FLAT_MEMORY_H
#define FLAT_MEMORY_H
#include "../common/elf_section.h"
#include <stdint.h>
#include <vector>
#include <string>

class FlatMemory
{
public:
  FlatMemory();
  ~FlatMemory();
  bool add_elf_sections(std::vector<ElfSection> &elf_sections);
  void set_entry_address(uint32_t entry_address);
  void write_to_file(const std::string &filename);
  void read_from_file(const std::string &filename);
private:
  std::vector<uint32_t> memory_;
  uint32_t start_address_;
  uint32_t end_address_;
  uint32_t entry_address_;
};
#endif