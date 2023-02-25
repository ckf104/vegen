#ifndef __Compatible_HPP
#define __Compatible_HPP

#include <optional>
#include "llvm/ADT/Optional.h"
#include "llvm/ADT/STLExtras.h"

#ifdef LLVM_17
namespace llvm {
  const std::nullopt_t None = std::nullopt;
  template <typename T>
  bool is_splat(T&& range){
    return all_equal(std::forward<T>(range)); 
  } 
}
#endif
#endif