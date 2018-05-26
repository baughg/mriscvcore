#include "memory_model.h"
#include <stdio.h>

MemoryModel::MemoryModel()
  : start_address_(0),
  end_address_(0),
  p_memory_(NULL)
{
}

MemoryModel::~MemoryModel()
{
}

bool MemoryModel::load(const std::string &filename)
{
  uint32_t mem_size = 0;
  
  FILE* mem_file = NULL;

  mem_file = fopen(filename.c_str(),"rb+");

  if(mem_file)
  {
    printf("Loading memory model: %s\n",filename.c_str());
    fread(&start_address_,sizeof(start_address_),1,mem_file);
    fread(&end_address_,sizeof(start_address_),1,mem_file);
    fread(&entry_address_,sizeof(entry_address_),1,mem_file);
    fread(&mem_size,sizeof(mem_size),1,mem_file);
    memory_.resize(mem_size);
    fread(&memory_[0],1,mem_size,mem_file);
    p_memory_ = (uint8_t*)&memory_[0];
    fclose(mem_file);
    return true;
  }

  return false;
}

void MemoryModel::read(uint32_t address, uint32_t &data)
{
  address += entry_address_;

  if(!p_memory_ || address > end_address_) {
    data = 0;
    return;
  }

  data = *((uint32_t*)&p_memory_[address]);
}