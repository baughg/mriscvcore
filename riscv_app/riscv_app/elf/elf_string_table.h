#ifndef ELF_STRING_TABLE_H
#define ELF_STRING_TABLE_H
#include "elfbase.h"
#include <string>
#include <vector>

namespace elf {
	template<class IW>
	class ElfStringTable
	{
	public:		
		void set_section_header(elf_section_header<IW> &sh);
		u32 load_strings(std::string elf_filename);
		bool is_section_string_table();
    bool is_section(elf_section_header<IW>* p_sec);
		std::string get_string(u32 offset);
	private:
		std::vector<std::string> strings_;
		std::vector<u32> string_offset_;
		elf_section_header<IW>* p_section_header_{};
		bool is_shstrtab_{false};
		std::vector<char> str_buf_;
	};

	template<class IW>
	bool ElfStringTable<IW>::is_section(elf_section_header<IW>* p_sec)
	{
		if (!p_sec)
			return false;

		return p_sec == p_section_header_;
	}

	template<class IW>
	void ElfStringTable<IW>::set_section_header(elf_section_header<IW> &sh)
	{
		p_section_header_ = &sh;
	}

	template<class IW>
	bool ElfStringTable<IW>::is_section_string_table()
	{
		return is_shstrtab_;
	}

	template<class IW>
	u32 ElfStringTable<IW>::load_strings(std::string elf_filename)
	{
		if (!p_section_header_)
			return 0;

		FILE* elf_file = NULL;

		elf_file = fopen(elf_filename.c_str(), "rb");

		if (!elf_file)
			return 0;


		str_buf_.resize(p_section_header_->sh_size);
		char* p_str = &str_buf_[0];

		fseek(elf_file, p_section_header_->sh_offset, SEEK_CUR);
		fread(p_str, 1, p_section_header_->sh_size, elf_file);

		u32 start_str = 0;
		u32 end_str = 0;
		u32 str_count = 0;
		u32 m = 0;

		for (u32 c = 0; c < p_section_header_->sh_size; ++c)
		{
			if (!p_str[c])
			{
				if (start_str != c)
				{
					start_str = c + 1;
					str_count++;
				}

				m = start_str;

				while (!p_str[m]) {
					start_str++;
					m++;
				}
			}
		}

		start_str = 0;
		end_str = 0;
		std::string str;
		strings_.reserve(str_count);
		string_offset_.reserve(str_count);

		for (u32 c = 0; c < p_section_header_->sh_size; ++c)
		{
			if (!p_str[c])
			{
				if (start_str != c)
				{
					str = std::string(&p_str[start_str]);

					if ((strcmp(str.c_str(), ".shstrtab") == 0) && start_str == p_section_header_->sh_name)
						is_shstrtab_ = true;

					string_offset_.push_back(start_str);
					strings_.push_back(str);
					start_str = c + 1;
				}

				m = start_str;

				while (!p_str[m]) {
					start_str++;
					m++;
				}
			}

		}

		fclose(elf_file);
		return str_count;
	}

	template<class IW>
	std::string ElfStringTable<IW>::get_string(u32 offset)
	{
		std::string str;


		if (offset < str_buf_.size())
		{
			str = std::string(&str_buf_[offset]);
		}

		return str;
	}
};
#endif
