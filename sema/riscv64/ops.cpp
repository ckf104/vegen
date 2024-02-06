#include <cstdint>
#include "generator.h"
extern "C" {

// unsigned saturating add
uint32_t Operation0(uint32_t a, uint32_t b) {
  auto c = a + b;
  if (c < a)
    return -1;
  return c;
}

// unsigned widening add
uint64_t Operation1(uint32_t a, uint32_t b) { return (uint64_t)a + b; }
uint32_t Operation2(uint32_t a, uint32_t b) { return a + b; }
uint32_t Operation3(uint32_t a, uint32_t b) { return a - b; }
}

void func(){
  auto w = Width();
  auto v1 = InputOperand(OperandType::ScalableVec, w, 0);
  auto v2 = InputOperand(OperandType::ScalableVec, w, 1);
  auto v3 = OutputOperand(OperandType::ScalableVec, w, 2); 
  auto index = Index();
  when(index % 2 == 0){
    v3[index] = v1[index] + v2[index];
  }
  when(index % 2 == 1){
    v3[index] = v1[index] - v2[index];
  }
}