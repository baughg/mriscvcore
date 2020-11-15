#ifndef ELF_SECTION_H
#define ELF_SECTION_H
#include "defs.h"
#include "elf_section_description.h"

template<class IW>
class ElfSection
{
public:
	ElfSection() = default;
	ElfSection(std::string name, std::string filename, u32 offset, u32 size);
	void create(std::string name, std::string filename, u32 offset, u32 size);
	void set_address_range(u32 base_addr, bool cacheable = true);
	std::string section_name();
	u32 size_in_words();
	u32 size_in_bytes();
	u32* raw_data();
	void resize_data(u32 sec_size);
	bool is_code();
	void set_as_code(bool code);
	void set_description(elf::ElfSectionDescription<IW> &desc);
	elf::ElfSectionDescription<IW> & get_description();
	u32 physical_address();
	void get_address_range(IW &base_addr, IW &max_addr);
protected:
	void set_address_range(IW base_addr, IW max_addr, bool cacheable);
	void init();
	std::string elf_filename;
	u32 file_offset;
	u32 section_size;
	elf::ElfSectionDescription<IW> *p_description_{};
	std::string section_name_;
	std::vector<u32> binary_image;
	bool initialised_{ false };
	bool is_code_{ false };
	u32 base_address_;
	u32 max_address_;
	bool cacheable_;
};


template<class IW>
ElfSection<IW>::ElfSection(std::string name_, std::string filename, u32 offset, u32 size)
	: elf_filename{ filename },
	file_offset{ offset },
	section_size{ size },
	section_name_{ name_ }
{
	init();
}

template<class IW>
void ElfSection<IW>::create(std::string name, std::string filename, u32 offset, u32 size)
{
	elf_filename = filename;
	section_name_ = name;
	file_offset = offset;
	section_size = size;

	init();
}

template<class IW>
u32 ElfSection<IW>::size_in_words()
{
	return section_size >> 2;
}

template<class IW>
u32 ElfSection<IW>::size_in_bytes()
{
	return section_size;
}

template<class IW>
void ElfSection<IW>::resize_data(u32 sec_size)
{
	section_size = sec_size;
	binary_image.resize(section_size);
}

template<class IW>
u32* ElfSection<IW>::raw_data()
{
	if (!section_size)
		return NULL;

	return &binary_image[0];
}

template<class IW>
std::string ElfSection<IW>::section_name()
{
	return section_name_;
}

template<class IW>
elf::ElfSectionDescription<IW> & ElfSection<IW>::get_description()
{
	if (!p_description_)
	{
		static elf::ElfSectionDescription dummy;
		return dummy;
	}

	return *p_description_;
}

template<class IW>
void ElfSection<IW>::set_description(elf::ElfSectionDescription<IW> &desc)
{
	p_description_ = &desc;
}

template<class IW>
void ElfSection<IW>::set_address_range(u32 base_addr, bool cacheable)
{
	set_address_range(base_addr, base_addr + section_size - 1, cacheable);
}

template<class IW>
u32 ElfSection<IW>::physical_address()
{
	return base_address_;
}

template<class IW>
void ElfSection<IW>::set_address_range(IW base_addr, IW max_addr, bool cacheable)
{
	base_address_ = base_addr;
	max_address_ = max_addr;
	cacheable_ = cacheable;
}

template<class IW>
void ElfSection<IW>::get_address_range(IW &base_addr, IW &max_addr)
{
	base_addr = base_address_;
	max_addr = max_address_;
}

template<class IW>
void ElfSection<IW>::init()
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

template<class IW>
bool ElfSection<IW>::is_code()
{
	return is_code_;
}

template<class IW>
void ElfSection<IW>::set_as_code(bool code)
{
	is_code_ = code;
}

#endif

