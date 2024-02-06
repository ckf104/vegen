#include <cstdint>
#include <utility>

extern "C" std::pair<uint64_t, uint64_t> foo(uint64_t a, uint64_t b) {
  return {a + b, a - b};
}
