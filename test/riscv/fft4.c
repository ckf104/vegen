typedef float FFTDouble;
struct FFTComplex {
  float re, im;
};

void fft4expand(struct FFTComplex *z) {
  FFTDouble t1, t2, t3, t4, t5, t6, t7, t8;

  t3 = z[0].re - z[1].re;
  t1 = z[0].re + z[1].re;
  t8 = z[3].re - z[2].re;
  t6 = z[3].re + z[2].re;
  z[2].re = t1 - t6;
  z[0].re = t1 + t6;
  t4 = z[0].im - z[1].im;
  t2 = z[0].im + z[1].im;
  t7 = z[2].im - z[3].im;
  t5 = z[2].im + z[3].im;
  z[3].im = t4 - t8;
  z[1].im = t4 + t8;
  z[3].re = t3 - t7;
  z[1].re = t3 + t7;
  z[2].im = t2 - t5;
  z[0].im = t2 + t5;
}

struct FFTComplex h[] = {{1.1f, 1.2f}, {1.3f, 1.4f}, {1.5f, 1.6f}, {1.7f, 1.8f}};

int main() {
  fft4expand(h);
  return 0;
}