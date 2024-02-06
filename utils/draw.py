import matplotlib.pyplot as plt
import matplotlib



name_list = ['fft4', 'sbc', 'conv', 'dot']
num_list = [1.000, 1.000, 1.000, 1.000]
num_list1 = [1.000, 1.000, 0.198, 0.115]
num_list2 = [1.000, 1.218, 0.172, 0.128]

'''
name_list = ['GSM', 'ADPCM', 'JPEG']
num_list = [1.000, 1.000, 1.000]
num_list1 = [0.481, 1.000, 0.915]
num_list2 = [0.991, 1.000, 1.009]
'''
x = list(range(len(num_list)))
total_width, n = 1, 4
width = total_width / n


matplotlib.rcParams['font.sans-serif']=['simhei']   # 用黑体显示中文
matplotlib.rcParams['axes.unicode_minus']=False     # 正常显示负号

#plt.figure(dpi=160)
b1 = plt.bar(x, num_list, width=width, label='标量程序', fc='#63b2ee')
x = [t+width for t in x]
b2 = plt.bar(x, num_list1, width=width, label='clang向量化',
             tick_label=name_list, fc='#f8cb7f')
x = [t+width for t in x]
b3 = plt.bar(x, num_list2, width=width, label='SclVeGen向量化', fc='#7cd6cf')
plt.bar_label(b1, fmt="%.3f", label_type='edge', fontsize=7)
plt.bar_label(b2, fmt="%.3f", label_type='edge', fontsize=7)
plt.bar_label(b3, fmt="%.3f", label_type='edge', fontsize=7)
plt.legend()
plt.ylabel("动态指令数")

ax = plt.gca()
ax.set_ylim([0, 1.4])


plt.savefig("/home/ckf104/Downloads/bench1.svg", bbox_inches = 'tight', pad_inches = 0)
#plt.show()