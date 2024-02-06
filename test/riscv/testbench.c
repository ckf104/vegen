typedef float FFTDouble;
typedef short int16_t;
typedef int int32_t;

#include <string.h>

#define SBC_COS_TABLE_FIXED_SCALE 15
#define SBC_PROTO_FIXED_SCALE 16
#define SCALE_OUT_BITS 15

int16_t saturate_i16(int32_t x) {
  return x >= 32767 ? 32767 : (x <= -32768 ? -32768 : x);
}

static const int16_t g_lumaFilter[4][8] = {{0, 0, 0, 641, 0, 0, 0, 0},
                                           {-1, 41, -10, 58, 17, -5, 1, 0},
                                           {-1, 41, -11, 40, 40, -11, 41, -1},
                                           {0, 1, -5, 17, 58, -10, 41, -1}};

static const int16_t g_chromaFilter[8][4] = {
    {0, 641, 0, 0},     {-21, 58, 10, -21}, {-41, 54, 16, -21},
    {-61, 46, 28, -41}, {-41, 36, 36, -41}, {-41, 28, 46, -61},
    {-21, 16, 54, -41}, {-21, 10, 58, -21}};

#define srcStride 4
#define dstStride 4
#define coeffIdx 1
#define N 4
#define width 4
#define height 8
/*
void kernel(const int16_t *__restrict__ src, int16_t *__restrict__ dst) {
  const int16_t *c =
      (N == 8 ? g_lumaFilter[coeffIdx] : g_chromaFilter[coeffIdx]);
  int shift = 6;
  int row, col;

  src -= (N / 2 - 1) * srcStride;
#pragma unroll
  for (row = 0; row < height; row++) {
#pragma unroll
    for (col = 0; col < width; col++) {
      int sum;

      sum = src[col + 0 * srcStride] * c[0];
      sum += src[col + 1 * srcStride] * c[1];
      sum += src[col + 2 * srcStride] * c[2];
      sum += src[col + 3 * srcStride] * c[3];
      if (N == 8) {
        sum += src[col + 4 * srcStride] * c[4];
        sum += src[col + 5 * srcStride] * c[5];
        sum += src[col + 6 * srcStride] * c[6];
        sum += src[col + 7 * srcStride] * c[7];
      }

      // int16_t val = (int16_t)((sum) >> shift);
      int16_t val = saturate_i16((sum) >> shift);
      dst[col] = val;
    }

    src += srcStride;
    dst += dstStride;
  }
}*/

void kernel(const int16_t *__restrict__ in, int32_t *__restrict__ out,
                   const int16_t *__restrict__ consts) {
  int32_t t1[8];
  int16_t t2[8];
  int i, j, hop = 0;

#pragma unroll
  /* rounding coefficient */
  for (i = 0; i < 4; i++)
    t1[i] = 1 << (SBC_PROTO_FIXED_SCALE - 1);

#pragma unroll
  /* low pass polyphase filter */
  for (hop = 0; hop < 10 * 4; hop += 2 * 4)
    for (i = 0; i < 2 * 4; i++)
      t1[i >> 1] += in[hop + i] * consts[hop + i];

  /* scaling */
  for (i = 0; i < 4; i++)
    t2[i] = t1[i] >> SBC_PROTO_FIXED_SCALE;

  memset(t1, 0, sizeof(t1));

#pragma unroll
  /* do the cos transform */
  for (i = 0; i < 4 / 2; i++)
    for (j = 0; j < 2 * 4; j++)
      t1[j >> 1] += t2[i * 2 + (j & 1)] * consts[10 * 4 + i * 2 * 4 + j];

#pragma unroll
  for (i = 0; i < 4; i++)
    out[i] = t1[i] >> (SBC_COS_TABLE_FIXED_SCALE - SCALE_OUT_BITS);
}