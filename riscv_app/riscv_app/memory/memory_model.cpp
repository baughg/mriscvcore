#include "memory_model.h"

MemoryModel::MemoryModel()
  : start_address_(0),
  end_address_(0)
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
    fread(&start_address_,sizeof(start_address_),1,mem_file);
    fread(&end_address_,sizeof(start_address_),1,mem_file);
    fread(&entry_address_,sizeof(entry_address_),1,mem_file);
    fread(&mem_size,sizeof(mem_size),1,mem_file);
    memory_.resize(mem_size);
    fread(&memory_[0],1,mem_size,mem_file);
    fclose(mem_file);
    return true;
  }

  return false;
}