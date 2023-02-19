#include "SimpleParser.h"
#include "llvm/Support/ManagedStatic.h"

llvm::ManagedStatic<std::vector<Interface *>> allInterface;