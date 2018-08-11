#include "flat_memory.h"

FlatMemory::FlatMemory()
  : start_address_(0),
  end_address_(0)
{
}

FlatMemory::~FlatMemory()
{
}

bool FlatMemory::add_elf_sections(std::vector<ElfSection> &elf_sections)
{
  size_t sections = elf_sections.size();
  u32 base_address = 0;
  u32 addr = 0;
  bool is_code = false;
  bool for_leon_rt = false;
  bool is_stack = false;
  u32 load_size = 0;
  u32 max_addr = 0, min_addr = 0;
  u32 max_address = 0, min_address = UINT32_MAX;

  for (size_t sec = 0; sec < sections; ++sec) {
    elf_sections[sec].get_address_range(min_addr,max_addr);

    if(max_addr > max_address)
      max_address = max_addr;

    if(min_address > min_addr)
      min_address = min_addr;
  }

  u32 memory_size = max_address;

  if(((memory_size >> 2) << 2) < memory_size)
  {
    memory_size >>= 2;
    memory_size++;    
  }

  start_address_ = min_address;
  end_address_ = max_address;
  min_address = 0;

  memory_.resize(memory_size);
  u8* p_flat_mem = (u8*)&memory_[0];

  for (size_t sec = 0; sec < sections; ++sec)
  {
    base_address = elf_sections[sec].physical_address();
    std::string sname = elf_sections[sec].section_name();
    u32 section_bytes = elf_sections[sec].size_in_bytes();

    is_code = elf_sections[sec].is_code();
    is_stack = sname.rfind(".stack") != std::string::npos;


    if (!is_stack)
    {
      elf_sections[sec].get_address_range(min_addr,max_addr);
      printf("[0x%.8X,0x%.8X]\t%s\n",min_addr,max_addr, sname.c_str());

      addr = base_address;
      u32 section_words = elf_sections[sec].size_in_words();
      u32 section_bytes = elf_sections[sec].size_in_bytes();
      u32* p_section_data = elf_sections[sec].raw_data();
      u32* p_dest = (u32*)&p_flat_mem[base_address-min_address];

      memcpy(p_dest, p_section_data, section_bytes);
    }

  }

  return true;
}

void FlatMemory::set_entry_address(uint32_t entry_address)
{
  entry_address_ = entry_address;
}

void FlatMemory::write_to_file(const std::string &filename)
{
  const uint32_t mem_size = memory_.size() * sizeof(uint32_t);

  if(!mem_size)
    return;

  FILE* mem_file = NULL;

  mem_file = fopen(filename.c_str(),"wb+");

  if(mem_file)
  {
    fwrite(&start_address_,sizeof(start_address_),1,mem_file);
    fwrite(&end_address_,sizeof(start_address_),1,mem_file);
    fwrite(&entry_address_,sizeof(entry_address_),1,mem_file);
    fwrite(&mem_size,sizeof(mem_size),1,mem_file);
    fwrite(&memory_[0],1,mem_size,mem_file);
    fclose(mem_file);
  }
}

void FlatMemory::read_from_file(const std::string &filename)
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
  }
}