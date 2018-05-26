#ifndef MEMORY_MODEL_H
#define MEMORY_MODEL_H
#include <stdint.h>
#include <vector>
#include <string>

class MemoryModel
{
public:
  MemoryModel();
  ~MemoryModel();
  bool load(const std::string &filename);
  void read(uint32_t address, uint32_t &data);
  void write(uint32_t address, const uint32_t data);
private:
  std::vector<uint32_t> memory_;
  uint8_t* p_memory_; 
  uint32_t start_address_;
  uint32_t end_address_;
  uint32_t entry_address_;
};
#endif