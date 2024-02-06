#include <cstdint>
#include <optional>
#include <vector>

enum class OpType : uint32_t { add, mul };
enum class OperandType { FixedVec, ScalableVec, scalar };

template <class T> class Trait;
template <class T> class Compound;
template <class T> class Base {

public:
  const Compound<T> &operator+(int);
  const Compound<T> &operator*(int);
  const Compound<T> &operator+(const Base &);
  const Compound<T> &operator*(const Base &);
  const Compound<T> &operator+(const Trait<T> &);
  const Compound<T> &operator*(const Trait<T> &);
};

template <class T> class Leaf : public Base<T> {
  std::optional<int> w;

public:
  Leaf(int w) : w(w) {}
  Leaf() : w(std::nullopt) {}
};

template <class T> class Compound : public Base<T> {
  OpType op;
  Base<T> *left, *right;

public:
  Compound(OpType t, Base<T> *l, Base<T> *r) : op(t), left(l), right(r) {}
};

template <class T> class Trait {
  const Compound<T> &operator+(const Trait &t2) {
    auto c =
        new () Compound<T>(OpType::add, &this->getExpr(), &t2.getExpr(), false);
  }
  const Compound<T> &operator*(const Trait &t2) {
    return Compound<T>(OpType::mul, &this->getExpr(), &t2.getExpr(), false);
  }
  const Compound<T> &operator+(const Base<T> &t2) {
    return Compound<T>(OpType::add, this->getExpr(), &t2, false);
  }
  const Compound<T> &operator*(const Base<T> &t2) {
    return Compound<T>(OpType::mul, this->getExpr(), &t2, false);
  }
  const Compound<T> &operator+(int constant) {
    auto *c = new Leaf<T>(constant, true);
    return Compound<T>(OpType::add, this->getExpr(), c, false);
  }
  const Compound<T> &operator*(int constant) {
    auto *c = new Leaf<T>(constant, true);
    return Compound<T>(OpType::mul, this->getExpr(), c, false);
  }
  virtual const Base<T> &getExpr() = 0;
};

template <class T> const Compound<T> &Base<T>::operator+(int constant) {
  auto *c = new Leaf<T>(constant, true);
  return Compound<T>(OpType::add, this, c, false);
}

template <class T> const Compound<T> &Base<T>::operator*(int constant) {
  auto *c = new Leaf<T>(constant, true);
  return Compound<T>(OpType::mul, this, c, false);
}

template <class T> const Compound<T> &Base<T>::operator+(const Base<T> &t2) {
  return Compound<T>(OpType::add, this, &t2, false);
}

template <class T> const Compound<T> &Base<T>::operator*(const Base<T> &t2) {
  return Compound<T>(OpType::mul, this, &t2, false);
}

template <class T> const Compound<T> &Base<T>::operator+(const Trait<T> &t2) {
  return Compound<T>(OpType::add, this, &t2.getExpr(), false);
}

template <class T> const Compound<T> &Base<T>::operator*(const Trait<T> &t2) {
  return Compound<T>(OpType::mul, this, &t2.getExpr(), false);
}

template <class T>
const Compound<T> &operator+(int constant, const Base<T> &t2) {
  auto *c = new Leaf<T>(constant, true);
  return Compound<T>(OpType::add, c, &t2, false);
}
template <class T>
const Compound<T> &operator*(int constant, const Base<T> &t2) {
  auto *c = new Leaf<T>(constant, true);
  return Compound<T>(OpType::mul, c, &t2, false);
}
template <class T>
const Compound<T> &operator+(int constant, const Trait<T> &t2) {
  auto *c = new Leaf<T>(constant, true);
  return Compound<T>(OpType::add, c, &t2.getExpr(), false);
}
template <class T>
const Compound<T> &operator*(int constant, const Trait<T> &t2) {
  auto *c = new Leaf<T>(constant, true);
  return Compound<T>(OpType::mul, c, &t2.getExpr(), false);
}

class Width : Trait<Width> {
  Base<Width> *expr;

public:
  const Base<Width> &getExpr() override { return *expr; }
  Width() { expr = new Leaf<Width>(true); }
  Width(const Base<Width> &b) {}
};

class Index : Trait<Index> {
  Base<Index> *expr;

public:
  const Base<Index> &getExpr() override { return *expr; }
  Index(){/*expr = new Leaf...*/}
};

class Operand {
public:
  Operand(OperandType t, Width w) {}
};

class InputOperand : public Operand {
public:
  InputOperand(OperandType t, Width w, uint32_t id) : Operand(t, w){};
};

class OutputOperand : public Operand {
  uint32_t period;

public:
  OutputOperand(OperandType t, Width w, uint32_t period)
      : Operand(t, w), period(period){};
  
};

class Context {
  std::vector<InputOperand *> inputs;
  OutputOperand *output;
};