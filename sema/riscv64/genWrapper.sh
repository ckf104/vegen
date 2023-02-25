#set -ex
if [ ! -d $1 ]; then
  echo "Usage: ./genWrapper.sh [dir of auto-generated rvv api-test] [output file]"
  exit 1
fi

if [ -z $2 ]; then
  echo "Usage: ./genWrapper.sh [dir of auto-generated rvv api-test] [output file]"
  exit 1
fi

if [ -e $2 ]; then
  rm $2
fi

if [ -n "$3" ]; then
  goal="/dev/stdout"
else
  goal="/dev/null"
fi 

all_files=$(ls $1)
#failed_file=""
cnt=0
all_cnt=0
for file in $all_files; do
  if [ -n "$3" -a $file != "$3" ]; then
    continue
  fi
  all_cnt=$(expr $all_cnt + 1)
  path=$1/$file
  if ~/tmp/install/llvm-git/bin/clang -x c --target=riscv64-unknown-linux-gnu \
  -march=rv64gcv_zfh1p0_zvfh0p1 -menable-experimental-extensions \
  --sysroot=/home/ckf104/install/riscv/sysroot -S \
  -emit-llvm -O3 > $goal 2>&1 -o /dev/null $path; then  
    cat $path >> $2
  else
    echo "Failed: $file"
    cnt=$(expr $cnt + 1)
    #failed_file="$failed_file $file"
  fi
done
echo "Total $all_cnt, Failed: $cnt"