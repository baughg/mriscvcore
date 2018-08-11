#include "defs.h"
#include <stdio.h>
#include <cassert>

// least significant one
u32 Movis::lso(u32 a)
{
  u32 e = 0;

  if (!a) return ~0;

  while (!(a & 0x1)) {
    a >>= 1;
    e++;
  }

  return e;
}

// count the number of ones
u32 Movis::ones(u32 a)
{
  u32 e = 0;

  if (!a) return 0;

  for (u32 n = 0; n < 32; ++n)
  {
    e += (a & 0x1);
    a >>= 1;
  }

  return e;
}

// most significant one
u32 Movis::mso(u32 a)
{
  u32 e = 31;

  if (!a) return ~0;

  while (!(a & 0x80000000)) {
    a <<= 1;
    e--;
  }

  return e;
}

// most significant one
u32 Movis::mso_u64(u64 a)
{
  u32 e = 63;

  if (!a) return ~0;

  while (!(a & 0x8000000000000000LL)) {
    a <<= 1;
    e--;
  }

  return e;
}


u32 Movis::lso_u64(u64 a)
{
  u32 e = 0;

  if (!a) return 0;

  while (!(a & 0x1LL)) {
    a >>= 1;
    e++;
  }

  return e;
}

void Movis::alert(std::string msg)
{
  fprintf(stderr,"\n%s\n", msg.c_str());

#ifdef _DEBUG
  assert(0);
#endif
}

void Movis::pad_string(
  std::string &str, 
  const size_t num, 
  const char paddingChar)
{
  if (num > str.size())
    str.insert(str.size(), num - str.size(), paddingChar);
}
