# PRESENT 加密算法及优化
**本代码仅供学习使用 可能有受sidechannel等攻击的风险**

**This code is for study purpose only, may be vulernable to sidechannel attack.**

本代码在MSP430单片机上实现并优化了PRESENT加密算法，尽可能避免IF语句的使用以保持时间一致性，避免time based sidechannel attack

PRESENT加密算法：https://en.wikipedia.org/wiki/PRESENT

## 基准代码
present_ref 为基准实现，未进行任何优化，运行速度为*4022.85 cycles/bit*

## 优化后代码
present_opt 为优化后的代码(未使用bitslicing),运行速度为*149.38 cycles/bit*

使用的优化方法为：

1. 使用SPbox将SBox和PBox合并
2. 使用和MSP430寄存器宽度相符合的数据结构
3. 使用64位的指针对数据进行操作，以让编译器可以更好的优化代码
4. 使用LUT做位移操作

## Bitslicing优化
present_bs 为使用bitslicing 进行优化后的代码，运行速度为*101.5 cycles/bit*

优化方法为：

1. 优化布尔运算，重用之前的运算结果进而提高效率
2. 使用LUT做round key slicing（分片操作）
3. 减少slicing时的位移操作
4. 使用back buffer做临时存储(类似ping-pong缓存操作)

