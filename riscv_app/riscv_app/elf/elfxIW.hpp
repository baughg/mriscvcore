
namespace elf {
	template <class IW>
	ElfxIW<IW>::ElfxIW() : ElfBase()
	{
		memset(&header_, 0, sizeof(header_));
		t = &header_.t;
		b = &header_.b;
		p_m_ = &header_.m;
		p_cmx_dma_section_ = NULL;
		p_symbol_section_ = NULL;
		p_sh_str_tab_ = NULL;
		p_sh_symstr_tab_ = NULL;
	}
	
	template <class IW>
	bool ElfxIW<IW>::read_header_from_file(std::string file_name)
	{
		FILE* elf_file = NULL;

		elf_file = fopen(file_name.c_str(), "rb");

		if (!elf_file)
			return false;

		fread(&header_, sizeof(header_), 1, elf_file);

		fclose(elf_file);
		elf_filename_ = file_name;		
		return header_.t.ei_class == ei_class_;
	}

	template <class IW>
	bool ElfxIW<IW>::print_header_info()
	{
		if (header_.t.ei_class != ei_class_)
			return false;

		if (ElfBase::print_header_info())
		{
			printf("\nMemory address of the entry point - %#016x\n", static_cast<uint64_t>(p_m_->e_entry));
			printf("Start of the program header table - %#016x\n", static_cast<uint64_t>(p_m_->e_phoff));
			printf("Start of the section header table - %#016x\n", static_cast<uint64_t>(p_m_->e_shoff));
		}

		return true;
	}

	template <class IW>
	bool ElfxIW<IW>::load_section(const IW &address, u32 &load_size, elf::ElfSectionDescription<IW> &desc)
	{
		const u32 prog_headers = header_.b.e_phnum;
		u32 file_offset = desc.file_offset();

		for (u32 ph = 0; ph < prog_headers; ++ph)
		{
			if (address == program_headers_[ph].p_paddr &&
				program_headers_[ph].p_offset == file_offset)
			{
				if (!program_headers_[ph].p_filesz)
					load_size = 0;
				break;
			}
		}


		return load_size > 0;
	}

	template <class IW>
	bool ElfxIW<IW>::get_program_header()
	{
		const u32 prog_headers = header_.b.e_phnum;

		if (!prog_headers || header_.t.ei_class != ei_class_)
			return false;

		program_headers_.resize(prog_headers);

		FILE* elf_file = NULL;

		elf_file = fopen(elf_filename_.c_str(), "rb");

		if (!elf_file)
			return false;

		fseek(elf_file, header_.m.e_phoff, SEEK_SET);
		fread(&program_headers_[0], sizeof(elf_program_header<IW>), prog_headers, elf_file);

		fclose(elf_file);

		return true;
	}

	template <class IW>
	bool ElfxIW<IW>::get_section_header()
	{
		p_symbol_section_ = nullptr;
		p_sh_str_tab_ = nullptr;
		p_sh_symstr_tab_ = nullptr;

		const u32 sect_headers{ header_.b.e_shnum };

		if (!sect_headers || header_.t.ei_class != ei_class_)
			return false;

		section_headers_.resize(sect_headers);

		FILE* elf_file = NULL;

		elf_file = fopen(elf_filename_.c_str(), "rb");

		if (!elf_file)
			return false;

		fseek(elf_file, header_.m.e_shoff, SEEK_SET);
		fread(&section_headers_[0], sizeof(elf_section_header<IW>), sect_headers, elf_file);

		u32 str_tab_count = 0;
		u32 section_count = 0;

		for (u32 sh = 0; sh < sect_headers; ++sh)
		{
			if (section_headers_[sh].sh_type == SHT_STRTAB)
				str_tab_count++;

			if (section_headers_[sh].sh_type)
				section_count++;
		}

		fclose(elf_file);

		section_description_.resize(sect_headers);

		if (str_tab_count)
		{
			string_tables_.resize(str_tab_count);
			u32 stb = 0;

			for (u32 sh = 0; sh < sect_headers; ++sh)
			{
				if (section_headers_[sh].sh_type == SHT_STRTAB)
				{
					string_tables_[stb].set_section_header(section_headers_[sh]);
					string_tables_[stb].load_strings(elf_filename_);

					if (string_tables_[stb].is_section_string_table())
						p_sh_str_tab_ = &string_tables_[stb];

					stb++;
				}
			}
		}

		section_count = 0;

		if (p_sh_str_tab_) {
			elf_section_header<IW>* p_strtab_ = NULL;

			for (u32 sh = 0; sh < sect_headers; ++sh)
			{
				if (section_headers_[sh].sh_type) {
					std::string section_name = p_sh_str_tab_->get_string(section_headers_[sh].sh_name);

					section_description_[sh].set_section_info(section_name, section_headers_[sh]);

					if (!strcmp(section_name.c_str(), ".symtab"))
						p_symbol_section_ = &section_description_[sh];

					if (!strcmp(section_name.c_str(), ".strtab"))
						p_strtab_ = &section_headers_[sh];

					section_count++;
				}
				else
				{
					section_description_[sh].set_section_info("none", section_headers_[sh]);
				}
			}

			for (size_t st = 0; st < string_tables_.size(); ++st)
			{
				if (string_tables_[st].is_section(p_strtab_))
				{
					p_sh_symstr_tab_ = &string_tables_[st];
				}
			}
		}

		return section_count > 0;
	}

	template <class IW>
	void  ElfxIW<IW>::lookup_symbol(std::string variable)
	{
		lookup_symbols_.push_back(variable);
	}

	template <class IW>
	bool sort_by_address(const elf::function &lhs, const elf::function &rhs)
	{
		return lhs.address < rhs.address;
	}

	template <class IW>
	bool ElfxIW<IW>::cmx_dma_section(IW &addr, u32 &size)
	{
		if (!p_cmx_dma_section_)
			return false;

		addr = p_cmx_dma_section_->address();
		size = p_cmx_dma_section_->file_size();
		return true;
	}

	template <class IW>
	bool ElfxIW<IW>::get_symbols()
	{
		if (!p_symbol_section_ || !p_sh_symstr_tab_)
			return false;

		FILE* elf_file = NULL;

		elf_file = fopen(elf_filename_.c_str(), "rb");

		if (!elf_file)
			return false;

		u32 section_size = p_symbol_section_->file_size();
		u32 symbols = section_size / sizeof(elf_symbol<IW>);

		symbols_.resize(symbols);
		symbol_descriptions_.resize(symbols);

		fseek(elf_file, p_symbol_section_->file_offset(), SEEK_SET);
		fread(&symbols_[0], sizeof(elf_symbol<IW>), symbols, elf_file);
		fclose(elf_file);
		u32 st_info = 0;
		const u32 section_count = (u32)section_description_.size();

		std::string sym_name;
		std::string sec_name;
		bool get_section = false;
		const size_t lookup_symbol_count = lookup_symbols_.size();

		for (u32 sym = 0; sym < symbols; ++sym)
		{
			if constexpr (sizeof(IW) == sizeof(uint64_t)) {
				st_info = symbols_[sym].sym64.st_info;
				sym_name = p_sh_symstr_tab_->get_string(symbols_[sym].sym64.st_name);
			}
			else {
				st_info = symbols_[sym].sym32.st_info;
				sym_name = p_sh_symstr_tab_->get_string(symbols_[sym].sym32.st_name);
			}
			
			symbol_descriptions_[sym].type = (symbol_type)(st_info & 0xf);
			st_info >>= 4;
			symbol_descriptions_[sym].binding = (bind_type)st_info;
			symbol_descriptions_[sym].p_symbol = &symbols_[sym];

			

			sec_name = "none";
			get_section = false;

			if constexpr (sizeof(IW) == sizeof(uint64_t)) {
				if (symbols_[sym].sym64.st_shndx < section_count)
				{
					sec_name = section_description_[symbols_[sym].sym64.st_shndx].section_name();
					get_section = true;
				}
			}
			else {
				if (symbols_[sym].sym32.st_shndx < section_count)
				{
					sec_name = section_description_[symbols_[sym].sym32.st_shndx].section_name();
					get_section = true;
				}
			}

			switch (symbol_descriptions_[sym].type)
			{
			case STT_OBJECT:
			case STT_FUNC:
			case STT_SECTION:
				symbol_descriptions_[sym].name = sym_name;
				symbol_descriptions_[sym].section = sec_name;
				break;
			case STT_FILE:
				symbol_descriptions_[sym].name = sym_name;
				break;
			case STT_NOTYPE:
				symbol_descriptions_[sym].name = sym_name;

				if (get_section)
					symbol_descriptions_[sym].section = sec_name;
				break;
			}

			for (size_t ls = 0; ls < lookup_symbol_count; ++ls)
			{
				if (!strcmp(symbol_descriptions_[sym].name.c_str(), lookup_symbols_[ls].c_str()))
				{
					lookup_symbol_descriptions_.push_back(&symbol_descriptions_[sym]);
					break;
				}
			}
		}

		return true;
	}

	template <class IW>
	std::deque<symbol_description<IW>*> & ElfxIW<IW>::get_lookup_symbols()
	{
		return lookup_symbol_descriptions_;
	}

	template <class IW>
	std::vector<ElfSectionDescription<IW>> &ElfxIW<IW>::section_description()
	{
		return section_description_;
	}

	template <class IW>
	IW ElfxIW<IW>::entry_address()
	{
		return p_m_->e_entry;
	}
}