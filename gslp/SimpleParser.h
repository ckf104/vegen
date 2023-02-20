#include "ControlDependence.h"
#ifndef OPT_PASS
#ifndef __SimpleParser_HPP
#define __SimpleParser_HPP

#include "llvm/ADT/StringRef.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/raw_ostream.h"
#include <cassert>
#include <cstdint>
#include <string>
#include <sys/types.h>
#include <tuple>
#include <type_traits>
#include <vector>

class Interface;
extern llvm::ManagedStatic<std::vector<Interface *>> allInterface;

template <class Type, bool IsList>
using ConvertType = std::conditional_t<IsList, std::vector<Type>, Type>;

template <class Type, bool IsList, bool IsRequired = false> struct OptionItem;

class Interface {
  Interface() { allInterface->push_back(this); }
  template <class Type, bool IsList, bool IsRequired> friend struct OptionItem;

public:
  virtual bool handleOccur(llvm::StringRef arg) = 0;
  virtual bool isOccurTimeSatisify() = 0;
  virtual uint32_t getNumOccurrences() = 0;
  virtual llvm::StringRef getArgName() = 0;
};

// assert IsList = false && IsClass = true
template <class Type, bool IsList, bool IsClass>
struct OptionItemBase : public ConvertType<Type, IsList> {
  using ConvertType = ConvertType<Type, IsList>;
  OptionItemBase() = default;

  void setValue(const ConvertType &t) { ConvertType::operator=(t); }
  ConvertType& getValue() { return *this;}
  void reset() {
    ConvertType::~ConvertType();
    ConvertType::ConvertType();
  }
};

template <class Type, bool IsClass>
struct OptionItemBase<Type, true, IsClass> : public std::vector<Type> {
  void setValue(const std::vector<Type> &t) { std::vector<Type>::operator=(t); }
  std::vector<Type>& getValue() { return *this;}
  void addValue(const Type &t) { this->push_back(t); }
  void reset() { this->clear(); }
};

template <class Type> struct OptionItemBase<Type, false, false> {
  operator Type() const { return data; }
  void setValue(const Type &t) { data = t; }
  Type& getValue() { return data;}
  void reset() { data = Type(); }

private:
  Type data;
};

template <class Type, bool IsList, bool IsRequired>
bool Parser(OptionItem<Type, IsList, IsRequired> &item, llvm::StringRef arg);

template <class Type, bool IsList, bool IsRequired>
struct OptionItem
    : public Interface,
      public OptionItemBase<Type, IsList, std::is_class<Type>::value> {
  using OptionItemBase =
      OptionItemBase<Type, IsList, std::is_class<Type>::value>;
  using ConvertType = ConvertType<Type, IsList>;
  static constexpr bool isRequired = IsRequired;

  friend bool Parser<Type, IsList, IsRequired>(OptionItem &item,
                                               llvm::StringRef arg);
  
  OptionItem& operator=(const OptionItem& other) = delete;
  OptionItem(const OptionItem& other) = delete;
  ConvertType operator=(const ConvertType& v){
    this->setValue(v);
    return this->getValue();
  }  

  explicit OptionItem(const char *name, ConvertType initValue = ConvertType())
      : name(name) {
    this->setValue(initValue);
  }
  bool handleOccur(llvm::StringRef arg) override { return Parser(*this, arg); }
  bool isOccurTimeSatisify() override { return numOccur >= isRequired; }
  uint32_t getNumOccurrences() override { return numOccur; }
  llvm::StringRef getArgName() override { return name; }

private:
  llvm::StringRef name;
  uint32_t numOccur = 0;
};

template <class Type, bool IsList>
bool Parser(llvm::StringRef name, llvm::StringRef arg,
            ConvertType<Type, IsList> &) {
  static_assert(std::is_same<Type, bool>::value && !IsList, "Not implemented");
  return false;
}

inline bool Parser(llvm::StringRef name, llvm::StringRef arg, bool &data) {
  auto rest = arg.substr(name.size());
  if (rest == "=True" || rest == "TRUE" || rest == "=true" || rest == "=1" ||
      rest == "" || rest == "=On" || rest == "=ON" || rest == "=on") {
    data = true;
  } else
    data = false;
  return true;
}

inline bool Parser(llvm::StringRef name, llvm::StringRef arg,
                   std::vector<std::string> &data) {
  if (arg.size() <= name.size() || arg[name.size()] != '=')
    return false;
  llvm::StringRef lhs, rhs;
  auto sub = arg.substr(name.size() + 1);
  while (!sub.empty()) {
    std::tie(lhs, rhs) = sub.split(',');
    data.emplace_back(lhs.data());
    sub = rhs;
  }
  return true;
}

inline bool Parser(llvm::StringRef name, llvm::StringRef arg,
                   std::string &data) {
  if (arg.size() <= name.size() || arg[name.size()] != '=')
    return false;
  auto sub = arg.substr(name.size() + 1);
  data = std::string(sub.data());
  return true;

  return true;
}

template <class Type, bool IsList, bool IsRequired>
bool Parser(OptionItem<Type, IsList, IsRequired> &item, llvm::StringRef arg) {
  using namespace llvm;
  if (arg.substr(0, item.name.size()) != item.name)
    return false;
  ConvertType<Type, IsList> t;
  if (Parser(item.name, arg, t)) {
    item.setValue(t);
    item.numOccur += 1;
    return true;
  }
  return false;
}

inline void GlobalParser(const std::vector<std::string> &args) {
  llvm::errs() << "args size: " << args.size() << "\n";
  for (const auto &sref : args) {
    llvm::errs() << sref << "\n";
    for (auto *i : *allInterface) {
      if (i->handleOccur(sref))
        break;
    }
  }
  llvm::errs() << "all Interface Size: " << allInterface->size();
  for (auto *i : *allInterface) {
    if (!i->isOccurTimeSatisify()) {
      llvm::errs() << "Arg " << i->getArgName() << " is not specified\n";
      llvm_unreachable("");
    }
  }
}

#endif
#endif
