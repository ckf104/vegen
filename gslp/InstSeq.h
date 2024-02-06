#ifndef __InstSeq_HPP
#define __InstSeq_HPP

#include "llvm/ADT/SmallVector.h"
#include <cstdint>
#include <string>
#include <vector>

enum class Source : uint16_t { Input, Intermediate };
struct InputPos {
  Source src;
  uint16_t id;
};

class InstBinding;
class SingleInst {
  llvm::SmallVector<InputPos> inputs;
  std::string name;

public:
  SingleInst(std::string name, uint16_t sz) : name(std::move(name)) {
    for (uint16_t i = 0; i < sz; ++i)
      inputs.push_back({Source::Input, i});
  }
  SingleInst(const std::vector<InputPos> &pos, std::string n)
      : name(std::move(n)) {
    for (auto p : pos)
      inputs.push_back(p);
  }
  const llvm::SmallVectorImpl<InputPos> &getInputsPos() const { return inputs; }
  const std::string &getInstName() const { return name; }

  friend class InstBinding;
};

#endif