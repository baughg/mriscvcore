#ifndef MRISCVCORE_H
#define MRISCVCORE_H
#include <stdint.h>

namespace ALU {
enum{ 
  addi = 0b000000010011,                                
  add = 0b000000110011,                    
  sub = 0b100000110011,                                                   
  andi = 0b001110010011,
  bitwise_and = 0b001110110011,
  xori = 0b001000010011,
  bitwise_xor=0b001000110011,                    
  ori = 0b001100010011,
  bitwise_or = 0b001100110011,
  slti = 0b000100010011,
  sltiu = 0b000110010011,
  slt = 0b000100110011,
  sltu = 0b000110110011,                    
  beq = 0b000001100011,
  bge = 0b001011100011,
  bne = 0b000011100011,
  blt = 0b001001100011,
  bltu = 0b001101100011,
  bgeu = 0b001111100011,
  srl = 0b001010110011,
  srli = 0b001010010011,                    
  sll = 0b000010110011,
  slli = 0b000010010011,
  sra = 0b101010110011,
  srai = 0b011010010011
};
}

typedef struct lui_instr{
  lui_instr()
  {
    inst = 0b0110111;
  }

  uint32_t inst : 7;
  uint32_t rd : 5;
  uint32_t imm : 20;
}lui_instr;

typedef struct add_instr{
  add_instr()
  {
    inst = 0b0110011;
    zeros1 = 0;
    zeros2 = 0;
  }

  uint32_t inst : 7;
  uint32_t rd : 5;
  uint32_t zeros1 : 3;
  uint32_t rs1 : 5;
  uint32_t rs2 : 5;
  uint32_t zeros2 : 7;
}add_instr;

typedef struct mul_instr{
  mul_instr()
  {
    inst = 0b0110011;
    zeros1 = 0;
    one1 = 0000001;
  }

  uint32_t inst : 7;
  uint32_t rd : 5;
  uint32_t zeros1 : 3;
  uint32_t rs1 : 5;
  uint32_t rs2 : 5;
  uint32_t one1 : 7;
}mul_instr;

#endif