static const int mask[9] = {1, 2, 3, 0, 0, 0, 3, 2, 1};
const int m = 3;
const int n = 128;

void BM_convolve(int *__restrict__ image, int *__restrict__ out) {

  for (int i = 0; i < n - m; ++i)
    for (int j = 0; j < n - m; ++j)
      for (int k = 0; k < m; ++k)
        for (int l = 0; l < m; ++l)
          out[i * (n - m) + j] += image[(i + k) * n + j + l] * mask[k * m + l];
}

int image[128 * 128] = {1};
int out[128 * 128];
int main() {
  BM_convolve(image, out);
  return 0;
}