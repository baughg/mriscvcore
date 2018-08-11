#include "elfbase.h"

using namespace elf;

ElfBase::ElfBase() : t(nullptr), b(nullptr)
{
}


ElfBase::~ElfBase()
{
}


bool ElfBase::read_header_from_file(std::string file_name)
{
	return false;
}

bool ElfBase::print_header_info()
{
	if (!t || !b)
		return false;

	char magic_marker[sizeof(uint32_t)+1];
	memset(magic_marker, 0, sizeof(magic_marker));

	memcpy(magic_marker, &t->ei_mag, sizeof(uint32_t));

	if (magic_marker[0] == 0x7f) {
		magic_marker[0] = '.';
		printf("Magic:\t\t%s\n", magic_marker);
	}
	else {
		printf("Magic number not found!\n");
		return false;
	}
	std::string ei_class = "Unknown";

	if (t->ei_class == ELF32)
		ei_class = "ELF32";
	else if (t->ei_class == ELF64)
		ei_class = "ELF64";


	printf("Class:\t\t%s\n", ei_class.c_str());

	if (t->ei_data == LITTLE_ENDIAN_ELF)
		printf("Data:\t\tlittle endian\n");
	else if (t->ei_data == BIG_ENDIAN_ELF)
		printf("Data:\t\tbig endian\n");
	else
		printf("Data:\t\tendianness unknown\n");

	printf("Version:\t%u\n", (uint32_t)t->ei_version);

	printf("OS ABI:\t\t");

	switch (t->ei_osabi)
	{
	case SystemV:
		printf("SystemV");
		break;
	case HP_UX:
		printf("HP-UX");
		break;
	case NetBSD:
		printf("NetBSD");
		break;
	case Linux:
		printf("Linux");
		break;
	case Solaris:
		printf("Solaris");
		break;
	case AIX:
		printf("AIX");
		break;
	case FreeBSD:
		printf("FreeBSD");
		break;
	case OpenBSD:
		printf("OpenBSD");
		break;
	case OpenVMS:
		printf("OpenVMS");
		break;
	default:
		printf("Unknown (%u)", (uint32_t)t->ei_osabi);
		break;
	}

	printf("\nABI version:\t%u\n", (uint32_t)t->ei_abiversion);

	printf("Object is:\t");

	switch (t->e_type) {
	case RELOCATABLE:
		printf("RELOCATABLE\n");
		break;
	case EXECUTABLE:
		printf("EXECUTABLE\n");
		break;
	case SHARED:
		printf("SHARED\n");
		break;
	case CORE:
		printf("CORE\n");
		break;
	default:
		printf("Unknown (%u)\n", (uint32_t)t->e_type);
		break;
	}

	printf("ISA:\t\t");

	switch (t->e_machine) {
	case SPARC:
		printf("SPARC\n");
		break;
	case X86:
		printf("x86\n");
		break;
	case MIPS:
		printf("MIPS\n");
		break;
	case PowerPC:
		printf("PowerPC\n");
		break;
	case ARM:
		printf("ARM\n");
		break;
	case SuperH:
		printf("SuperH\n");
		break;
	case IA_64:
		printf("IA - 64\n");
		break;
	case x86_64:
		printf("x86_64\n");
		break;
	case AArch64:
		printf("AArch64\n");
		break;
	default:
		printf("Unknown (%u)\n", (uint32_t)t->e_machine);
		break;
	}

	printf("Version of ELF:\t%u\n",t->e_version);

	// bottom fields
	printf("Flags:\t\t0x%#08x\n",b->e_flags);
	printf("Header size:\t%u\n",(uint32_t)b->e_ehsize);
	printf("\nProgram header table entry size - %u\n", (uint32_t)b->e_phentsize);
	printf("Number of entry in program header table - %u\n", (uint32_t)b->e_phnum);
	printf("Section header table entry size - %u\n", (uint32_t)b->e_shentsize);
	printf("Number of entry in section header table - %u\n", (uint32_t)b->e_shnum);
	printf("Index of section header table entry that\ncontains the section names - %u\n", (uint32_t)b->e_shstrndx);

	return true;
}