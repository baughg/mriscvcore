#ifndef DEFS_H
#define DEFS_H
#include <stdint.h>
#include <vector>
#include <string>
#include <string.h>
#include <deque>
#include <map>
#include <list>
#include <algorithm>
#include <limits>
#include <limits.h>
//#define PRINTF_DBG0 printf
#define PRINTF_DBG0 //
#define PRINTF_DBG1 printf

typedef uint8_t   u8;
typedef int8_t    s8;
typedef uint16_t  u16;
typedef int16_t   s16;
typedef uint32_t  u32;
typedef int32_t   s32;
typedef uint64_t  u64;
typedef int64_t   s64;
typedef int16_t   half;
typedef int16_t   fp16;
typedef float     fp32;



namespace Movis {
  u32 lso(u32 a);
  u32 ones(u32 a);
  u32 mso_u64(u64 a);
  u32 lso_u64(u64 a);
  u32 mso(u32 a);
  void alert(std::string msg);
  void pad_string(std::string &str, const size_t num, const char paddingChar = ' ');
};
#endif
