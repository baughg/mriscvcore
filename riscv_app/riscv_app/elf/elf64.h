#pragma once
#include "elfbase.h"

namespace elf {
	class Elf64 :
		public ElfBase
	{
	public:
		Elf64();
		~Elf64();
	};
}

