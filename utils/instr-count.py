import sys
import os
from elftools.elf.elffile import ELFFile


def getTextRange(fileName):
    with open(fileName, "rb") as f:
        elfFile = ELFFile(f)
        textSec = elfFile.get_section_by_name(".text")
        if not textSec:
            print(f"no .text section in {fileName}!")
            sys.exit(1)
        return textSec["sh_addr"], textSec["sh_addr"] + textSec["sh_size"]


count = 0
# if len(sys.argv) != 1:
#    print("usage py low high file")
#    sys.exit(1)
low, high = getTextRange(sys.argv[1])
#print(low, high)
# low, high = int(sys.argv[1], 16), int(sys.argv[2], 16)

rside, wside = os.pipe()
id = os.fork()
qemu_path = "/home/ckf104/install/riscv/bin/qemu-riscv-ext"
if not id:
    # Child
    os.close(rside)
    # Make stdout go to parent
    # os.dup2(wside, 1)
    # Make stderr go to parent
    os.dup2(wside, 2)
    # Execute the desired program, qemu-riscv64 as first argument is needed,
    # execve will not add filename argument automatically
    os.execve(qemu_path,
              [qemu_path, "-singlestep", "-d", "nochain,cpu"] + sys.argv[1:], os.environ)

# Parent
os.close(wside)
pyrside = os.fdopen(rside)

while True:
    li = pyrside.readline()
    # print(li)
    l = li.split()
    # sys.stderr.writelines(li)
    if (len(l) == 0):
        break
    if l[0] != "pc":
        continue
    pc = int(l[1], 16)
    if low <= pc < high:
        #print(l)
        count += 1
print(count)
pid, exit_code = os.wait()
assert (pid == id)
assert (exit_code == 0)
