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
private:
  std::vector<uint32_t> memory_;
  uint64_t start_address_;
  uint64_t end_address_;
  uint64_t entry_address_;
};
#endif