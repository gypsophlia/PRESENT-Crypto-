# 1 "../driverlib/wdt_a.c"
# 1 "/home/hwsec/Desktop/msp430/template_present/present_ref//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../driverlib/wdt_a.c"
# 45 "../driverlib/wdt_a.c"
# 1 "../driverlib/inc/hw_regaccess.h" 1
# 35 "../driverlib/inc/hw_regaccess.h"
# 1 "/opt/ti/lib/gcc/msp430-elf/4.9.1/include/stdint.h" 1 3 4
# 9 "/opt/ti/lib/gcc/msp430-elf/4.9.1/include/stdint.h" 3 4
# 1 "/opt/ti/msp430-elf/include/stdint.h" 1 3 4
# 12 "/opt/ti/msp430-elf/include/stdint.h" 3 4
# 1 "/opt/ti/msp430-elf/include/machine/_default_types.h" 1 3 4







# 1 "/opt/ti/msp430-elf/include/sys/features.h" 1 3 4
# 9 "/opt/ti/msp430-elf/include/machine/_default_types.h" 2 3 4
# 27 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
# 37 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef short int __int16_t;
typedef short unsigned int __uint16_t;
# 55 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef long int __int32_t;
typedef long unsigned int __uint32_t;
# 77 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;
typedef long long unsigned int __uint64_t;
# 104 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;
typedef unsigned char __uint_least8_t;
# 126 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;
typedef short unsigned int __uint_least16_t;
# 144 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;
typedef long unsigned int __uint_least32_t;
# 158 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;
typedef long long unsigned int __uint_least64_t;
# 168 "/opt/ti/msp430-elf/include/machine/_default_types.h" 3 4
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 13 "/opt/ti/msp430-elf/include/stdint.h" 2 3 4
# 41 "/opt/ti/msp430-elf/include/stdint.h" 3 4
typedef __int8_t int8_t ;
typedef __uint8_t uint8_t ;




typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int16_t int16_t ;
typedef __uint16_t uint16_t ;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int32_t int32_t ;
typedef __uint32_t uint32_t ;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int64_t int64_t ;
typedef __uint64_t uint64_t ;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 95 "/opt/ti/msp430-elf/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 105 "/opt/ti/msp430-elf/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 115 "/opt/ti/msp430-elf/include/stdint.h" 3 4
  typedef long int int_fast32_t;
  typedef long unsigned int uint_fast32_t;
# 125 "/opt/ti/msp430-elf/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 174 "/opt/ti/msp430-elf/include/stdint.h" 3 4
  typedef long long int intmax_t;
# 183 "/opt/ti/msp430-elf/include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;






typedef __intptr_t intptr_t;
typedef __uintptr_t uintptr_t;
# 10 "/opt/ti/lib/gcc/msp430-elf/4.9.1/include/stdint.h" 2 3 4
# 36 "../driverlib/inc/hw_regaccess.h" 2
# 1 "/opt/ti/lib/gcc/msp430-elf/4.9.1/include/stdbool.h" 1 3 4
# 37 "../driverlib/inc/hw_regaccess.h" 2
# 46 "../driverlib/wdt_a.c" 2
# 1 "../driverlib/inc/hw_memmap.h" 1
# 44 "../driverlib/inc/hw_memmap.h"
# 1 "/opt/ti/include/msp430.h" 1
# 1537 "/opt/ti/include/msp430.h"
# 1 "/opt/ti/include/msp430fr5969.h" 1
# 64 "/opt/ti/include/msp430fr5969.h"
# 1 "/opt/ti/include/iomacros.h" 1
# 65 "/opt/ti/include/msp430fr5969.h" 2
# 118 "/opt/ti/include/msp430fr5969.h"
# 1 "/opt/ti/include/in430.h" 1
# 46 "/opt/ti/include/in430.h"
typedef unsigned int __istate_t;
# 119 "/opt/ti/include/msp430fr5969.h" 2
# 151 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char ADC12CTL0_L __asm__("0x0800");
extern volatile unsigned char ADC12CTL0_H __asm__("0x0800+1");
extern volatile unsigned int ADC12CTL0 __asm__("0x0800");

extern volatile unsigned char ADC12CTL1_L __asm__("0x0802");
extern volatile unsigned char ADC12CTL1_H __asm__("0x0802+1");
extern volatile unsigned int ADC12CTL1 __asm__("0x0802");

extern volatile unsigned char ADC12CTL2_L __asm__("0x0804");
extern volatile unsigned char ADC12CTL2_H __asm__("0x0804+1");
extern volatile unsigned int ADC12CTL2 __asm__("0x0804");

extern volatile unsigned char ADC12CTL3_L __asm__("0x0806");
extern volatile unsigned char ADC12CTL3_H __asm__("0x0806+1");
extern volatile unsigned int ADC12CTL3 __asm__("0x0806");

extern volatile unsigned char ADC12LO_L __asm__("0x0808");
extern volatile unsigned char ADC12LO_H __asm__("0x0808+1");
extern volatile unsigned int ADC12LO __asm__("0x0808");

extern volatile unsigned char ADC12HI_L __asm__("0x080A");
extern volatile unsigned char ADC12HI_H __asm__("0x080A+1");
extern volatile unsigned int ADC12HI __asm__("0x080A");

extern volatile unsigned char ADC12IFGR0_L __asm__("0x080C");
extern volatile unsigned char ADC12IFGR0_H __asm__("0x080C+1");
extern volatile unsigned int ADC12IFGR0 __asm__("0x080C");

extern volatile unsigned char ADC12IFGR1_L __asm__("0x080E");
extern volatile unsigned char ADC12IFGR1_H __asm__("0x080E+1");
extern volatile unsigned int ADC12IFGR1 __asm__("0x080E");

extern volatile unsigned char ADC12IFGR2_L __asm__("0x0810");
extern volatile unsigned char ADC12IFGR2_H __asm__("0x0810+1");
extern volatile unsigned int ADC12IFGR2 __asm__("0x0810");

extern volatile unsigned char ADC12IER0_L __asm__("0x0812");
extern volatile unsigned char ADC12IER0_H __asm__("0x0812+1");
extern volatile unsigned int ADC12IER0 __asm__("0x0812");

extern volatile unsigned char ADC12IER1_L __asm__("0x0814");
extern volatile unsigned char ADC12IER1_H __asm__("0x0814+1");
extern volatile unsigned int ADC12IER1 __asm__("0x0814");

extern volatile unsigned char ADC12IER2_L __asm__("0x0816");
extern volatile unsigned char ADC12IER2_H __asm__("0x0816+1");
extern volatile unsigned int ADC12IER2 __asm__("0x0816");

extern volatile unsigned char ADC12IV_L __asm__("0x0818");
extern volatile unsigned char ADC12IV_H __asm__("0x0818+1");
extern volatile unsigned int ADC12IV __asm__("0x0818");


extern volatile unsigned char ADC12MCTL0_L __asm__("0x0820");
extern volatile unsigned char ADC12MCTL0_H __asm__("0x0820+1");
extern volatile unsigned int ADC12MCTL0 __asm__("0x0820");

extern volatile unsigned char ADC12MCTL1_L __asm__("0x0822");
extern volatile unsigned char ADC12MCTL1_H __asm__("0x0822+1");
extern volatile unsigned int ADC12MCTL1 __asm__("0x0822");

extern volatile unsigned char ADC12MCTL2_L __asm__("0x0824");
extern volatile unsigned char ADC12MCTL2_H __asm__("0x0824+1");
extern volatile unsigned int ADC12MCTL2 __asm__("0x0824");

extern volatile unsigned char ADC12MCTL3_L __asm__("0x0826");
extern volatile unsigned char ADC12MCTL3_H __asm__("0x0826+1");
extern volatile unsigned int ADC12MCTL3 __asm__("0x0826");

extern volatile unsigned char ADC12MCTL4_L __asm__("0x0828");
extern volatile unsigned char ADC12MCTL4_H __asm__("0x0828+1");
extern volatile unsigned int ADC12MCTL4 __asm__("0x0828");

extern volatile unsigned char ADC12MCTL5_L __asm__("0x082A");
extern volatile unsigned char ADC12MCTL5_H __asm__("0x082A+1");
extern volatile unsigned int ADC12MCTL5 __asm__("0x082A");

extern volatile unsigned char ADC12MCTL6_L __asm__("0x082C");
extern volatile unsigned char ADC12MCTL6_H __asm__("0x082C+1");
extern volatile unsigned int ADC12MCTL6 __asm__("0x082C");

extern volatile unsigned char ADC12MCTL7_L __asm__("0x082E");
extern volatile unsigned char ADC12MCTL7_H __asm__("0x082E+1");
extern volatile unsigned int ADC12MCTL7 __asm__("0x082E");

extern volatile unsigned char ADC12MCTL8_L __asm__("0x0830");
extern volatile unsigned char ADC12MCTL8_H __asm__("0x0830+1");
extern volatile unsigned int ADC12MCTL8 __asm__("0x0830");

extern volatile unsigned char ADC12MCTL9_L __asm__("0x0832");
extern volatile unsigned char ADC12MCTL9_H __asm__("0x0832+1");
extern volatile unsigned int ADC12MCTL9 __asm__("0x0832");

extern volatile unsigned char ADC12MCTL10_L __asm__("0x0834");
extern volatile unsigned char ADC12MCTL10_H __asm__("0x0834+1");
extern volatile unsigned int ADC12MCTL10 __asm__("0x0834");

extern volatile unsigned char ADC12MCTL11_L __asm__("0x0836");
extern volatile unsigned char ADC12MCTL11_H __asm__("0x0836+1");
extern volatile unsigned int ADC12MCTL11 __asm__("0x0836");

extern volatile unsigned char ADC12MCTL12_L __asm__("0x0838");
extern volatile unsigned char ADC12MCTL12_H __asm__("0x0838+1");
extern volatile unsigned int ADC12MCTL12 __asm__("0x0838");

extern volatile unsigned char ADC12MCTL13_L __asm__("0x083A");
extern volatile unsigned char ADC12MCTL13_H __asm__("0x083A+1");
extern volatile unsigned int ADC12MCTL13 __asm__("0x083A");

extern volatile unsigned char ADC12MCTL14_L __asm__("0x083C");
extern volatile unsigned char ADC12MCTL14_H __asm__("0x083C+1");
extern volatile unsigned int ADC12MCTL14 __asm__("0x083C");

extern volatile unsigned char ADC12MCTL15_L __asm__("0x083E");
extern volatile unsigned char ADC12MCTL15_H __asm__("0x083E+1");
extern volatile unsigned int ADC12MCTL15 __asm__("0x083E");

extern volatile unsigned char ADC12MCTL16_L __asm__("0x0840");
extern volatile unsigned char ADC12MCTL16_H __asm__("0x0840+1");
extern volatile unsigned int ADC12MCTL16 __asm__("0x0840");

extern volatile unsigned char ADC12MCTL17_L __asm__("0x0842");
extern volatile unsigned char ADC12MCTL17_H __asm__("0x0842+1");
extern volatile unsigned int ADC12MCTL17 __asm__("0x0842");

extern volatile unsigned char ADC12MCTL18_L __asm__("0x0844");
extern volatile unsigned char ADC12MCTL18_H __asm__("0x0844+1");
extern volatile unsigned int ADC12MCTL18 __asm__("0x0844");

extern volatile unsigned char ADC12MCTL19_L __asm__("0x0846");
extern volatile unsigned char ADC12MCTL19_H __asm__("0x0846+1");
extern volatile unsigned int ADC12MCTL19 __asm__("0x0846");

extern volatile unsigned char ADC12MCTL20_L __asm__("0x0848");
extern volatile unsigned char ADC12MCTL20_H __asm__("0x0848+1");
extern volatile unsigned int ADC12MCTL20 __asm__("0x0848");

extern volatile unsigned char ADC12MCTL21_L __asm__("0x084A");
extern volatile unsigned char ADC12MCTL21_H __asm__("0x084A+1");
extern volatile unsigned int ADC12MCTL21 __asm__("0x084A");

extern volatile unsigned char ADC12MCTL22_L __asm__("0x084C");
extern volatile unsigned char ADC12MCTL22_H __asm__("0x084C+1");
extern volatile unsigned int ADC12MCTL22 __asm__("0x084C");

extern volatile unsigned char ADC12MCTL23_L __asm__("0x084E");
extern volatile unsigned char ADC12MCTL23_H __asm__("0x084E+1");
extern volatile unsigned int ADC12MCTL23 __asm__("0x084E");

extern volatile unsigned char ADC12MCTL24_L __asm__("0x0850");
extern volatile unsigned char ADC12MCTL24_H __asm__("0x0850+1");
extern volatile unsigned int ADC12MCTL24 __asm__("0x0850");

extern volatile unsigned char ADC12MCTL25_L __asm__("0x0852");
extern volatile unsigned char ADC12MCTL25_H __asm__("0x0852+1");
extern volatile unsigned int ADC12MCTL25 __asm__("0x0852");

extern volatile unsigned char ADC12MCTL26_L __asm__("0x0854");
extern volatile unsigned char ADC12MCTL26_H __asm__("0x0854+1");
extern volatile unsigned int ADC12MCTL26 __asm__("0x0854");

extern volatile unsigned char ADC12MCTL27_L __asm__("0x0856");
extern volatile unsigned char ADC12MCTL27_H __asm__("0x0856+1");
extern volatile unsigned int ADC12MCTL27 __asm__("0x0856");

extern volatile unsigned char ADC12MCTL28_L __asm__("0x0858");
extern volatile unsigned char ADC12MCTL28_H __asm__("0x0858+1");
extern volatile unsigned int ADC12MCTL28 __asm__("0x0858");

extern volatile unsigned char ADC12MCTL29_L __asm__("0x085A");
extern volatile unsigned char ADC12MCTL29_H __asm__("0x085A+1");
extern volatile unsigned int ADC12MCTL29 __asm__("0x085A");

extern volatile unsigned char ADC12MCTL30_L __asm__("0x085C");
extern volatile unsigned char ADC12MCTL30_H __asm__("0x085C+1");
extern volatile unsigned int ADC12MCTL30 __asm__("0x085C");

extern volatile unsigned char ADC12MCTL31_L __asm__("0x085E");
extern volatile unsigned char ADC12MCTL31_H __asm__("0x085E+1");
extern volatile unsigned int ADC12MCTL31 __asm__("0x085E");
# 340 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char ADC12MEM0_L __asm__("0x0860");
extern volatile unsigned char ADC12MEM0_H __asm__("0x0860+1");
extern volatile unsigned int ADC12MEM0 __asm__("0x0860");

extern volatile unsigned char ADC12MEM1_L __asm__("0x0862");
extern volatile unsigned char ADC12MEM1_H __asm__("0x0862+1");
extern volatile unsigned int ADC12MEM1 __asm__("0x0862");

extern volatile unsigned char ADC12MEM2_L __asm__("0x0864");
extern volatile unsigned char ADC12MEM2_H __asm__("0x0864+1");
extern volatile unsigned int ADC12MEM2 __asm__("0x0864");

extern volatile unsigned char ADC12MEM3_L __asm__("0x0866");
extern volatile unsigned char ADC12MEM3_H __asm__("0x0866+1");
extern volatile unsigned int ADC12MEM3 __asm__("0x0866");

extern volatile unsigned char ADC12MEM4_L __asm__("0x0868");
extern volatile unsigned char ADC12MEM4_H __asm__("0x0868+1");
extern volatile unsigned int ADC12MEM4 __asm__("0x0868");

extern volatile unsigned char ADC12MEM5_L __asm__("0x086A");
extern volatile unsigned char ADC12MEM5_H __asm__("0x086A+1");
extern volatile unsigned int ADC12MEM5 __asm__("0x086A");

extern volatile unsigned char ADC12MEM6_L __asm__("0x086C");
extern volatile unsigned char ADC12MEM6_H __asm__("0x086C+1");
extern volatile unsigned int ADC12MEM6 __asm__("0x086C");

extern volatile unsigned char ADC12MEM7_L __asm__("0x086E");
extern volatile unsigned char ADC12MEM7_H __asm__("0x086E+1");
extern volatile unsigned int ADC12MEM7 __asm__("0x086E");

extern volatile unsigned char ADC12MEM8_L __asm__("0x0870");
extern volatile unsigned char ADC12MEM8_H __asm__("0x0870+1");
extern volatile unsigned int ADC12MEM8 __asm__("0x0870");

extern volatile unsigned char ADC12MEM9_L __asm__("0x0872");
extern volatile unsigned char ADC12MEM9_H __asm__("0x0872+1");
extern volatile unsigned int ADC12MEM9 __asm__("0x0872");

extern volatile unsigned char ADC12MEM10_L __asm__("0x0874");
extern volatile unsigned char ADC12MEM10_H __asm__("0x0874+1");
extern volatile unsigned int ADC12MEM10 __asm__("0x0874");

extern volatile unsigned char ADC12MEM11_L __asm__("0x0876");
extern volatile unsigned char ADC12MEM11_H __asm__("0x0876+1");
extern volatile unsigned int ADC12MEM11 __asm__("0x0876");

extern volatile unsigned char ADC12MEM12_L __asm__("0x0878");
extern volatile unsigned char ADC12MEM12_H __asm__("0x0878+1");
extern volatile unsigned int ADC12MEM12 __asm__("0x0878");

extern volatile unsigned char ADC12MEM13_L __asm__("0x087A");
extern volatile unsigned char ADC12MEM13_H __asm__("0x087A+1");
extern volatile unsigned int ADC12MEM13 __asm__("0x087A");

extern volatile unsigned char ADC12MEM14_L __asm__("0x087C");
extern volatile unsigned char ADC12MEM14_H __asm__("0x087C+1");
extern volatile unsigned int ADC12MEM14 __asm__("0x087C");

extern volatile unsigned char ADC12MEM15_L __asm__("0x087E");
extern volatile unsigned char ADC12MEM15_H __asm__("0x087E+1");
extern volatile unsigned int ADC12MEM15 __asm__("0x087E");

extern volatile unsigned char ADC12MEM16_L __asm__("0x0880");
extern volatile unsigned char ADC12MEM16_H __asm__("0x0880+1");
extern volatile unsigned int ADC12MEM16 __asm__("0x0880");

extern volatile unsigned char ADC12MEM17_L __asm__("0x0882");
extern volatile unsigned char ADC12MEM17_H __asm__("0x0882+1");
extern volatile unsigned int ADC12MEM17 __asm__("0x0882");

extern volatile unsigned char ADC12MEM18_L __asm__("0x0884");
extern volatile unsigned char ADC12MEM18_H __asm__("0x0884+1");
extern volatile unsigned int ADC12MEM18 __asm__("0x0884");

extern volatile unsigned char ADC12MEM19_L __asm__("0x0886");
extern volatile unsigned char ADC12MEM19_H __asm__("0x0886+1");
extern volatile unsigned int ADC12MEM19 __asm__("0x0886");

extern volatile unsigned char ADC12MEM20_L __asm__("0x0888");
extern volatile unsigned char ADC12MEM20_H __asm__("0x0888+1");
extern volatile unsigned int ADC12MEM20 __asm__("0x0888");

extern volatile unsigned char ADC12MEM21_L __asm__("0x088A");
extern volatile unsigned char ADC12MEM21_H __asm__("0x088A+1");
extern volatile unsigned int ADC12MEM21 __asm__("0x088A");

extern volatile unsigned char ADC12MEM22_L __asm__("0x088C");
extern volatile unsigned char ADC12MEM22_H __asm__("0x088C+1");
extern volatile unsigned int ADC12MEM22 __asm__("0x088C");

extern volatile unsigned char ADC12MEM23_L __asm__("0x088E");
extern volatile unsigned char ADC12MEM23_H __asm__("0x088E+1");
extern volatile unsigned int ADC12MEM23 __asm__("0x088E");

extern volatile unsigned char ADC12MEM24_L __asm__("0x0890");
extern volatile unsigned char ADC12MEM24_H __asm__("0x0890+1");
extern volatile unsigned int ADC12MEM24 __asm__("0x0890");

extern volatile unsigned char ADC12MEM25_L __asm__("0x0892");
extern volatile unsigned char ADC12MEM25_H __asm__("0x0892+1");
extern volatile unsigned int ADC12MEM25 __asm__("0x0892");

extern volatile unsigned char ADC12MEM26_L __asm__("0x0894");
extern volatile unsigned char ADC12MEM26_H __asm__("0x0894+1");
extern volatile unsigned int ADC12MEM26 __asm__("0x0894");

extern volatile unsigned char ADC12MEM27_L __asm__("0x0896");
extern volatile unsigned char ADC12MEM27_H __asm__("0x0896+1");
extern volatile unsigned int ADC12MEM27 __asm__("0x0896");

extern volatile unsigned char ADC12MEM28_L __asm__("0x0898");
extern volatile unsigned char ADC12MEM28_H __asm__("0x0898+1");
extern volatile unsigned int ADC12MEM28 __asm__("0x0898");

extern volatile unsigned char ADC12MEM29_L __asm__("0x089A");
extern volatile unsigned char ADC12MEM29_H __asm__("0x089A+1");
extern volatile unsigned int ADC12MEM29 __asm__("0x089A");

extern volatile unsigned char ADC12MEM30_L __asm__("0x089C");
extern volatile unsigned char ADC12MEM30_H __asm__("0x089C+1");
extern volatile unsigned int ADC12MEM30 __asm__("0x089C");

extern volatile unsigned char ADC12MEM31_L __asm__("0x089E");
extern volatile unsigned char ADC12MEM31_H __asm__("0x089E+1");
extern volatile unsigned int ADC12MEM31 __asm__("0x089E");
# 1021 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char AESACTL0_L __asm__("0x09C0");
extern volatile unsigned char AESACTL0_H __asm__("0x09C0+1");
extern volatile unsigned int AESACTL0 __asm__("0x09C0");

extern volatile unsigned char AESACTL1_L __asm__("0x09C2");
extern volatile unsigned char AESACTL1_H __asm__("0x09C2+1");
extern volatile unsigned int AESACTL1 __asm__("0x09C2");

extern volatile unsigned char AESASTAT_L __asm__("0x09C4");
extern volatile unsigned char AESASTAT_H __asm__("0x09C4+1");
extern volatile unsigned int AESASTAT __asm__("0x09C4");

extern volatile unsigned char AESAKEY_L __asm__("0x09C6");
extern volatile unsigned char AESAKEY_H __asm__("0x09C6+1");
extern volatile unsigned int AESAKEY __asm__("0x09C6");

extern volatile unsigned char AESADIN_L __asm__("0x09C8");
extern volatile unsigned char AESADIN_H __asm__("0x09C8+1");
extern volatile unsigned int AESADIN __asm__("0x09C8");

extern volatile unsigned char AESADOUT_L __asm__("0x09CA");
extern volatile unsigned char AESADOUT_H __asm__("0x09CA+1");
extern volatile unsigned int AESADOUT __asm__("0x09CA");

extern volatile unsigned char AESAXDIN_L __asm__("0x09CC");
extern volatile unsigned char AESAXDIN_H __asm__("0x09CC+1");
extern volatile unsigned int AESAXDIN __asm__("0x09CC");

extern volatile unsigned char AESAXIN_L __asm__("0x09CE");
extern volatile unsigned char AESAXIN_H __asm__("0x09CE+1");
extern volatile unsigned int AESAXIN __asm__("0x09CE");
# 1173 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char CAPTIO0CTL_L __asm__("0x043E");
extern volatile unsigned char CAPTIO0CTL_H __asm__("0x043E+1");
extern volatile unsigned int CAPTIO0CTL __asm__("0x043E");
# 1187 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char CAPTIO1CTL_L __asm__("0x047E");
extern volatile unsigned char CAPTIO1CTL_H __asm__("0x047E+1");
extern volatile unsigned int CAPTIO1CTL __asm__("0x047E");
# 1236 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char CECTL0_L __asm__("0x08C0");
extern volatile unsigned char CECTL0_H __asm__("0x08C0+1");
extern volatile unsigned int CECTL0 __asm__("0x08C0");

extern volatile unsigned char CECTL1_L __asm__("0x08C2");
extern volatile unsigned char CECTL1_H __asm__("0x08C2+1");
extern volatile unsigned int CECTL1 __asm__("0x08C2");

extern volatile unsigned char CECTL2_L __asm__("0x08C4");
extern volatile unsigned char CECTL2_H __asm__("0x08C4+1");
extern volatile unsigned int CECTL2 __asm__("0x08C4");

extern volatile unsigned char CECTL3_L __asm__("0x08C6");
extern volatile unsigned char CECTL3_H __asm__("0x08C6+1");
extern volatile unsigned int CECTL3 __asm__("0x08C6");

extern volatile unsigned char CEINT_L __asm__("0x08CC");
extern volatile unsigned char CEINT_H __asm__("0x08CC+1");
extern volatile unsigned int CEINT __asm__("0x08CC");

const extern volatile unsigned char CEIV_L __asm__("0x08CE");
const extern volatile unsigned char CEIV_H __asm__("0x08CE+1");
const extern volatile unsigned int CEIV __asm__("0x08CE");
# 1604 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char CRCDI_L __asm__("0x0150");
extern volatile unsigned char CRCDI_H __asm__("0x0150+1");
extern volatile unsigned int CRCDI __asm__("0x0150");

extern volatile unsigned char CRCDIRB_L __asm__("0x0152");
extern volatile unsigned char CRCDIRB_H __asm__("0x0152+1");
extern volatile unsigned int CRCDIRB __asm__("0x0152");

extern volatile unsigned char CRCINIRES_L __asm__("0x0154");
extern volatile unsigned char CRCINIRES_H __asm__("0x0154+1");
extern volatile unsigned int CRCINIRES __asm__("0x0154");

extern volatile unsigned char CRCRESR_L __asm__("0x0156");
extern volatile unsigned char CRCRESR_H __asm__("0x0156+1");
extern volatile unsigned int CRCRESR __asm__("0x0156");
# 1628 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char CSCTL0_L __asm__("0x0160");
extern volatile unsigned char CSCTL0_H __asm__("0x0160+1");
extern volatile unsigned int CSCTL0 __asm__("0x0160");

extern volatile unsigned char CSCTL1_L __asm__("0x0162");
extern volatile unsigned char CSCTL1_H __asm__("0x0162+1");
extern volatile unsigned int CSCTL1 __asm__("0x0162");

extern volatile unsigned char CSCTL2_L __asm__("0x0164");
extern volatile unsigned char CSCTL2_H __asm__("0x0164+1");
extern volatile unsigned int CSCTL2 __asm__("0x0164");

extern volatile unsigned char CSCTL3_L __asm__("0x0166");
extern volatile unsigned char CSCTL3_H __asm__("0x0166+1");
extern volatile unsigned int CSCTL3 __asm__("0x0166");

extern volatile unsigned char CSCTL4_L __asm__("0x0168");
extern volatile unsigned char CSCTL4_H __asm__("0x0168+1");
extern volatile unsigned int CSCTL4 __asm__("0x0168");

extern volatile unsigned char CSCTL5_L __asm__("0x016A");
extern volatile unsigned char CSCTL5_H __asm__("0x016A+1");
extern volatile unsigned int CSCTL5 __asm__("0x016A");

extern volatile unsigned char CSCTL6_L __asm__("0x016C");
extern volatile unsigned char CSCTL6_H __asm__("0x016C+1");
extern volatile unsigned int CSCTL6 __asm__("0x016C");
# 1958 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char DMACTL0_L __asm__("0x0500");
extern volatile unsigned char DMACTL0_H __asm__("0x0500+1");
extern volatile unsigned int DMACTL0 __asm__("0x0500");

extern volatile unsigned char DMACTL1_L __asm__("0x0502");
extern volatile unsigned char DMACTL1_H __asm__("0x0502+1");
extern volatile unsigned int DMACTL1 __asm__("0x0502");

extern volatile unsigned char DMACTL2_L __asm__("0x0504");
extern volatile unsigned char DMACTL2_H __asm__("0x0504+1");
extern volatile unsigned int DMACTL2 __asm__("0x0504");

extern volatile unsigned char DMACTL3_L __asm__("0x0506");
extern volatile unsigned char DMACTL3_H __asm__("0x0506+1");
extern volatile unsigned int DMACTL3 __asm__("0x0506");

extern volatile unsigned char DMACTL4_L __asm__("0x0508");
extern volatile unsigned char DMACTL4_H __asm__("0x0508+1");
extern volatile unsigned int DMACTL4 __asm__("0x0508");

extern volatile unsigned char DMAIV_L __asm__("0x050E");
extern volatile unsigned char DMAIV_H __asm__("0x050E+1");
extern volatile unsigned int DMAIV __asm__("0x050E");


extern volatile unsigned char DMA0CTL_L __asm__("0x0510");
extern volatile unsigned char DMA0CTL_H __asm__("0x0510+1");
extern volatile unsigned int DMA0CTL __asm__("0x0510");

extern volatile unsigned long int DMA0SA __asm__("0x0512");

extern volatile unsigned long int DMA0DA __asm__("0x0516");

extern volatile unsigned int DMA0SZ __asm__("0x051A");


extern volatile unsigned char DMA1CTL_L __asm__("0x0520");
extern volatile unsigned char DMA1CTL_H __asm__("0x0520+1");
extern volatile unsigned int DMA1CTL __asm__("0x0520");

extern volatile unsigned long int DMA1SA __asm__("0x0522");

extern volatile unsigned long int DMA1DA __asm__("0x0526");

extern volatile unsigned int DMA1SZ __asm__("0x052A");


extern volatile unsigned char DMA2CTL_L __asm__("0x0530");
extern volatile unsigned char DMA2CTL_H __asm__("0x0530+1");
extern volatile unsigned int DMA2CTL __asm__("0x0530");

extern volatile unsigned long int DMA2SA __asm__("0x0532");

extern volatile unsigned long int DMA2DA __asm__("0x0536");

extern volatile unsigned int DMA2SZ __asm__("0x053A");
# 2341 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char FRCTL0_L __asm__("0x0140");
extern volatile unsigned char FRCTL0_H __asm__("0x0140+1");
extern volatile unsigned int FRCTL0 __asm__("0x0140");

extern volatile unsigned char GCCTL0_L __asm__("0x0144");
extern volatile unsigned char GCCTL0_H __asm__("0x0144+1");
extern volatile unsigned int GCCTL0 __asm__("0x0144");

extern volatile unsigned char GCCTL1_L __asm__("0x0146");
extern volatile unsigned char GCCTL1_H __asm__("0x0146+1");
extern volatile unsigned int GCCTL1 __asm__("0x0146");
# 2442 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char MPUCTL0_L __asm__("0x05A0");
extern volatile unsigned char MPUCTL0_H __asm__("0x05A0+1");
extern volatile unsigned int MPUCTL0 __asm__("0x05A0");

extern volatile unsigned char MPUCTL1_L __asm__("0x05A2");
extern volatile unsigned char MPUCTL1_H __asm__("0x05A2+1");
extern volatile unsigned int MPUCTL1 __asm__("0x05A2");

extern volatile unsigned char MPUSEGB2_L __asm__("0x05A4");
extern volatile unsigned char MPUSEGB2_H __asm__("0x05A4+1");
extern volatile unsigned int MPUSEGB2 __asm__("0x05A4");

extern volatile unsigned char MPUSEGB1_L __asm__("0x05A6");
extern volatile unsigned char MPUSEGB1_H __asm__("0x05A6+1");
extern volatile unsigned int MPUSEGB1 __asm__("0x05A6");

extern volatile unsigned char MPUSAM_L __asm__("0x05A8");
extern volatile unsigned char MPUSAM_H __asm__("0x05A8+1");
extern volatile unsigned int MPUSAM __asm__("0x05A8");

extern volatile unsigned char MPUIPC0_L __asm__("0x05AA");
extern volatile unsigned char MPUIPC0_H __asm__("0x05AA+1");
extern volatile unsigned int MPUIPC0 __asm__("0x05AA");

extern volatile unsigned char MPUIPSEGB2_L __asm__("0x05AC");
extern volatile unsigned char MPUIPSEGB2_H __asm__("0x05AC+1");
extern volatile unsigned int MPUIPSEGB2 __asm__("0x05AC");

extern volatile unsigned char MPUIPSEGB1_L __asm__("0x05AE");
extern volatile unsigned char MPUIPSEGB1_H __asm__("0x05AE+1");
extern volatile unsigned int MPUIPSEGB1 __asm__("0x05AE");
# 2584 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char MPY_L __asm__("0x04C0");
extern volatile unsigned char MPY_H __asm__("0x04C0+1");
extern volatile unsigned int MPY __asm__("0x04C0");

extern volatile unsigned char MPYS_L __asm__("0x04C2");
extern volatile unsigned char MPYS_H __asm__("0x04C2+1");
extern volatile unsigned int MPYS __asm__("0x04C2");

extern volatile unsigned char MAC_L __asm__("0x04C4");
extern volatile unsigned char MAC_H __asm__("0x04C4+1");
extern volatile unsigned int MAC __asm__("0x04C4");

extern volatile unsigned char MACS_L __asm__("0x04C6");
extern volatile unsigned char MACS_H __asm__("0x04C6+1");
extern volatile unsigned int MACS __asm__("0x04C6");

extern volatile unsigned char OP2_L __asm__("0x04C8");
extern volatile unsigned char OP2_H __asm__("0x04C8+1");
extern volatile unsigned int OP2 __asm__("0x04C8");

extern volatile unsigned char RESLO_L __asm__("0x04CA");
extern volatile unsigned char RESLO_H __asm__("0x04CA+1");
extern volatile unsigned int RESLO __asm__("0x04CA");

extern volatile unsigned char RESHI_L __asm__("0x04CC");
extern volatile unsigned char RESHI_H __asm__("0x04CC+1");
extern volatile unsigned int RESHI __asm__("0x04CC");

const extern volatile unsigned char SUMEXT_L __asm__("0x04CE");
const extern volatile unsigned char SUMEXT_H __asm__("0x04CE+1");
const extern volatile unsigned int SUMEXT __asm__("0x04CE");


extern volatile unsigned char MPY32L_L __asm__("0x04D0");
extern volatile unsigned char MPY32L_H __asm__("0x04D0+1");
extern volatile unsigned int MPY32L __asm__("0x04D0");

extern volatile unsigned char MPY32H_L __asm__("0x04D2");
extern volatile unsigned char MPY32H_H __asm__("0x04D2+1");
extern volatile unsigned int MPY32H __asm__("0x04D2");

extern volatile unsigned char MPYS32L_L __asm__("0x04D4");
extern volatile unsigned char MPYS32L_H __asm__("0x04D4+1");
extern volatile unsigned int MPYS32L __asm__("0x04D4");

extern volatile unsigned char MPYS32H_L __asm__("0x04D6");
extern volatile unsigned char MPYS32H_H __asm__("0x04D6+1");
extern volatile unsigned int MPYS32H __asm__("0x04D6");

extern volatile unsigned char MAC32L_L __asm__("0x04D8");
extern volatile unsigned char MAC32L_H __asm__("0x04D8+1");
extern volatile unsigned int MAC32L __asm__("0x04D8");

extern volatile unsigned char MAC32H_L __asm__("0x04DA");
extern volatile unsigned char MAC32H_H __asm__("0x04DA+1");
extern volatile unsigned int MAC32H __asm__("0x04DA");

extern volatile unsigned char MACS32L_L __asm__("0x04DC");
extern volatile unsigned char MACS32L_H __asm__("0x04DC+1");
extern volatile unsigned int MACS32L __asm__("0x04DC");

extern volatile unsigned char MACS32H_L __asm__("0x04DE");
extern volatile unsigned char MACS32H_H __asm__("0x04DE+1");
extern volatile unsigned int MACS32H __asm__("0x04DE");

extern volatile unsigned char OP2L_L __asm__("0x04E0");
extern volatile unsigned char OP2L_H __asm__("0x04E0+1");
extern volatile unsigned int OP2L __asm__("0x04E0");

extern volatile unsigned char OP2H_L __asm__("0x04E2");
extern volatile unsigned char OP2H_H __asm__("0x04E2+1");
extern volatile unsigned int OP2H __asm__("0x04E2");

extern volatile unsigned char RES0_L __asm__("0x04E4");
extern volatile unsigned char RES0_H __asm__("0x04E4+1");
extern volatile unsigned int RES0 __asm__("0x04E4");

extern volatile unsigned char RES1_L __asm__("0x04E6");
extern volatile unsigned char RES1_H __asm__("0x04E6+1");
extern volatile unsigned int RES1 __asm__("0x04E6");

extern volatile unsigned char RES2_L __asm__("0x04E8");
extern volatile unsigned char RES2_H __asm__("0x04E8+1");
extern volatile unsigned int RES2 __asm__("0x04E8");

extern volatile unsigned char RES3_L __asm__("0x04EA");
extern volatile unsigned char RES3_H __asm__("0x04EA+1");
extern volatile unsigned int RES3 __asm__("0x04EA");

extern volatile unsigned char MPY32CTL0_L __asm__("0x04EC");
extern volatile unsigned char MPY32CTL0_H __asm__("0x04EC+1");
extern volatile unsigned int MPY32CTL0 __asm__("0x04EC");
# 2738 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char PMMCTL0_L __asm__("0x0120");
extern volatile unsigned char PMMCTL0_H __asm__("0x0120+1");
extern volatile unsigned int PMMCTL0 __asm__("0x0120");

extern volatile unsigned char PMMIFG_L __asm__("0x012A");
extern volatile unsigned char PMMIFG_H __asm__("0x012A+1");
extern volatile unsigned int PMMIFG __asm__("0x012A");

extern volatile unsigned char PM5CTL0_L __asm__("0x0130");
extern volatile unsigned char PM5CTL0_H __asm__("0x0130+1");
extern volatile unsigned int PM5CTL0 __asm__("0x0130");
# 2811 "/opt/ti/include/msp430fr5969.h"
const extern volatile unsigned char PAIN_L __asm__("0x0200");
const extern volatile unsigned char PAIN_H __asm__("0x0200+1");
const extern volatile unsigned int PAIN __asm__("0x0200");

extern volatile unsigned char PAOUT_L __asm__("0x0202");
extern volatile unsigned char PAOUT_H __asm__("0x0202+1");
extern volatile unsigned int PAOUT __asm__("0x0202");

extern volatile unsigned char PADIR_L __asm__("0x0204");
extern volatile unsigned char PADIR_H __asm__("0x0204+1");
extern volatile unsigned int PADIR __asm__("0x0204");

extern volatile unsigned char PAREN_L __asm__("0x0206");
extern volatile unsigned char PAREN_H __asm__("0x0206+1");
extern volatile unsigned int PAREN __asm__("0x0206");

extern volatile unsigned char PASEL0_L __asm__("0x020A");
extern volatile unsigned char PASEL0_H __asm__("0x020A+1");
extern volatile unsigned int PASEL0 __asm__("0x020A");

extern volatile unsigned char PASEL1_L __asm__("0x020C");
extern volatile unsigned char PASEL1_H __asm__("0x020C+1");
extern volatile unsigned int PASEL1 __asm__("0x020C");

extern volatile unsigned char PASELC_L __asm__("0x0216");
extern volatile unsigned char PASELC_H __asm__("0x0216+1");
extern volatile unsigned int PASELC __asm__("0x0216");

extern volatile unsigned char PAIES_L __asm__("0x0218");
extern volatile unsigned char PAIES_H __asm__("0x0218+1");
extern volatile unsigned int PAIES __asm__("0x0218");

extern volatile unsigned char PAIE_L __asm__("0x021A");
extern volatile unsigned char PAIE_H __asm__("0x021A+1");
extern volatile unsigned int PAIE __asm__("0x021A");

extern volatile unsigned char PAIFG_L __asm__("0x021C");
extern volatile unsigned char PAIFG_H __asm__("0x021C+1");
extern volatile unsigned int PAIFG __asm__("0x021C");
# 2874 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned int P1IV __asm__("0x020E");

extern volatile unsigned int P2IV __asm__("0x021E");
# 2944 "/opt/ti/include/msp430fr5969.h"
const extern volatile unsigned char PBIN_L __asm__("0x0220");
const extern volatile unsigned char PBIN_H __asm__("0x0220+1");
const extern volatile unsigned int PBIN __asm__("0x0220");

extern volatile unsigned char PBOUT_L __asm__("0x0222");
extern volatile unsigned char PBOUT_H __asm__("0x0222+1");
extern volatile unsigned int PBOUT __asm__("0x0222");

extern volatile unsigned char PBDIR_L __asm__("0x0224");
extern volatile unsigned char PBDIR_H __asm__("0x0224+1");
extern volatile unsigned int PBDIR __asm__("0x0224");

extern volatile unsigned char PBREN_L __asm__("0x0226");
extern volatile unsigned char PBREN_H __asm__("0x0226+1");
extern volatile unsigned int PBREN __asm__("0x0226");

extern volatile unsigned char PBSEL0_L __asm__("0x022A");
extern volatile unsigned char PBSEL0_H __asm__("0x022A+1");
extern volatile unsigned int PBSEL0 __asm__("0x022A");

extern volatile unsigned char PBSEL1_L __asm__("0x022C");
extern volatile unsigned char PBSEL1_H __asm__("0x022C+1");
extern volatile unsigned int PBSEL1 __asm__("0x022C");

extern volatile unsigned char PBSELC_L __asm__("0x0236");
extern volatile unsigned char PBSELC_H __asm__("0x0236+1");
extern volatile unsigned int PBSELC __asm__("0x0236");

extern volatile unsigned char PBIES_L __asm__("0x0238");
extern volatile unsigned char PBIES_H __asm__("0x0238+1");
extern volatile unsigned int PBIES __asm__("0x0238");

extern volatile unsigned char PBIE_L __asm__("0x023A");
extern volatile unsigned char PBIE_H __asm__("0x023A+1");
extern volatile unsigned int PBIE __asm__("0x023A");

extern volatile unsigned char PBIFG_L __asm__("0x023C");
extern volatile unsigned char PBIFG_H __asm__("0x023C+1");
extern volatile unsigned int PBIFG __asm__("0x023C");
# 3007 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned int P3IV __asm__("0x022E");

extern volatile unsigned int P4IV __asm__("0x023E");
# 3067 "/opt/ti/include/msp430fr5969.h"
const extern volatile unsigned char PJIN_L __asm__("0x0320");
const extern volatile unsigned char PJIN_H __asm__("0x0320+1");
const extern volatile unsigned int PJIN __asm__("0x0320");

extern volatile unsigned char PJOUT_L __asm__("0x0322");
extern volatile unsigned char PJOUT_H __asm__("0x0322+1");
extern volatile unsigned int PJOUT __asm__("0x0322");

extern volatile unsigned char PJDIR_L __asm__("0x0324");
extern volatile unsigned char PJDIR_H __asm__("0x0324+1");
extern volatile unsigned int PJDIR __asm__("0x0324");

extern volatile unsigned char PJREN_L __asm__("0x0326");
extern volatile unsigned char PJREN_H __asm__("0x0326+1");
extern volatile unsigned int PJREN __asm__("0x0326");

extern volatile unsigned char PJSEL0_L __asm__("0x032A");
extern volatile unsigned char PJSEL0_H __asm__("0x032A+1");
extern volatile unsigned int PJSEL0 __asm__("0x032A");

extern volatile unsigned char PJSEL1_L __asm__("0x032C");
extern volatile unsigned char PJSEL1_H __asm__("0x032C+1");
extern volatile unsigned int PJSEL1 __asm__("0x032C");

extern volatile unsigned char PJSELC_L __asm__("0x0336");
extern volatile unsigned char PJSELC_H __asm__("0x0336+1");
extern volatile unsigned int PJSELC __asm__("0x0336");
# 3115 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char REFCTL0_L __asm__("0x01B0");
extern volatile unsigned char REFCTL0_H __asm__("0x01B0+1");
extern volatile unsigned int REFCTL0 __asm__("0x01B0");
# 3173 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char RTCCTL01_L __asm__("0x04A0");
extern volatile unsigned char RTCCTL01_H __asm__("0x04A0+1");
extern volatile unsigned int RTCCTL01 __asm__("0x04A0");

extern volatile unsigned char RTCCTL23_L __asm__("0x04A2");
extern volatile unsigned char RTCCTL23_H __asm__("0x04A2+1");
extern volatile unsigned int RTCCTL23 __asm__("0x04A2");

extern volatile unsigned char RTCPS0CTL_L __asm__("0x04A8");
extern volatile unsigned char RTCPS0CTL_H __asm__("0x04A8+1");
extern volatile unsigned int RTCPS0CTL __asm__("0x04A8");

extern volatile unsigned char RTCPS1CTL_L __asm__("0x04AA");
extern volatile unsigned char RTCPS1CTL_H __asm__("0x04AA+1");
extern volatile unsigned int RTCPS1CTL __asm__("0x04AA");

extern volatile unsigned char RTCPS_L __asm__("0x04AC");
extern volatile unsigned char RTCPS_H __asm__("0x04AC+1");
extern volatile unsigned int RTCPS __asm__("0x04AC");

extern volatile unsigned int RTCIV __asm__("0x04AE");

extern volatile unsigned char RTCTIM0_L __asm__("0x04B0");
extern volatile unsigned char RTCTIM0_H __asm__("0x04B0+1");
extern volatile unsigned int RTCTIM0 __asm__("0x04B0");

extern volatile unsigned char RTCTIM1_L __asm__("0x04B2");
extern volatile unsigned char RTCTIM1_H __asm__("0x04B2+1");
extern volatile unsigned int RTCTIM1 __asm__("0x04B2");

extern volatile unsigned char RTCDATE_L __asm__("0x04B4");
extern volatile unsigned char RTCDATE_H __asm__("0x04B4+1");
extern volatile unsigned int RTCDATE __asm__("0x04B4");

extern volatile unsigned char RTCYEAR_L __asm__("0x04B6");
extern volatile unsigned char RTCYEAR_H __asm__("0x04B6+1");
extern volatile unsigned int RTCYEAR __asm__("0x04B6");

extern volatile unsigned char RTCAMINHR_L __asm__("0x04B8");
extern volatile unsigned char RTCAMINHR_H __asm__("0x04B8+1");
extern volatile unsigned int RTCAMINHR __asm__("0x04B8");

extern volatile unsigned char RTCADOWDAY_L __asm__("0x04BA");
extern volatile unsigned char RTCADOWDAY_H __asm__("0x04BA+1");
extern volatile unsigned int RTCADOWDAY __asm__("0x04BA");

extern volatile unsigned int BIN2BCD __asm__("0x04BC");

extern volatile unsigned int BCD2BIN __asm__("0x04BE");
# 3442 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char SFRIE1_L __asm__("0x0100");
extern volatile unsigned char SFRIE1_H __asm__("0x0100+1");
extern volatile unsigned int SFRIE1 __asm__("0x0100");
# 3465 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char SFRIFG1_L __asm__("0x0102");
extern volatile unsigned char SFRIFG1_H __asm__("0x0102+1");
extern volatile unsigned int SFRIFG1 __asm__("0x0102");
# 3489 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char SFRRPCR_L __asm__("0x0104");
extern volatile unsigned char SFRRPCR_H __asm__("0x0104+1");
extern volatile unsigned int SFRRPCR __asm__("0x0104");
# 3512 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char SYSCTL_L __asm__("0x0180");
extern volatile unsigned char SYSCTL_H __asm__("0x0180+1");
extern volatile unsigned int SYSCTL __asm__("0x0180");

extern volatile unsigned char SYSJMBC_L __asm__("0x0186");
extern volatile unsigned char SYSJMBC_H __asm__("0x0186+1");
extern volatile unsigned int SYSJMBC __asm__("0x0186");

extern volatile unsigned char SYSJMBI0_L __asm__("0x0188");
extern volatile unsigned char SYSJMBI0_H __asm__("0x0188+1");
extern volatile unsigned int SYSJMBI0 __asm__("0x0188");

extern volatile unsigned char SYSJMBI1_L __asm__("0x018A");
extern volatile unsigned char SYSJMBI1_H __asm__("0x018A+1");
extern volatile unsigned int SYSJMBI1 __asm__("0x018A");

extern volatile unsigned char SYSJMBO0_L __asm__("0x018C");
extern volatile unsigned char SYSJMBO0_H __asm__("0x018C+1");
extern volatile unsigned int SYSJMBO0 __asm__("0x018C");

extern volatile unsigned char SYSJMBO1_L __asm__("0x018E");
extern volatile unsigned char SYSJMBO1_H __asm__("0x018E+1");
extern volatile unsigned int SYSJMBO1 __asm__("0x018E");


extern volatile unsigned char SYSUNIV_L __asm__("0x019A");
extern volatile unsigned char SYSUNIV_H __asm__("0x019A+1");
extern volatile unsigned int SYSUNIV __asm__("0x019A");

extern volatile unsigned char SYSSNIV_L __asm__("0x019C");
extern volatile unsigned char SYSSNIV_H __asm__("0x019C+1");
extern volatile unsigned int SYSSNIV __asm__("0x019C");

extern volatile unsigned char SYSRSTIV_L __asm__("0x019E");
extern volatile unsigned char SYSRSTIV_H __asm__("0x019E+1");
extern volatile unsigned int SYSRSTIV __asm__("0x019E");
# 3684 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned int TA0CTL __asm__("0x0340");

extern volatile unsigned int TA0CCTL0 __asm__("0x0342");

extern volatile unsigned int TA0CCTL1 __asm__("0x0344");

extern volatile unsigned int TA0CCTL2 __asm__("0x0346");

extern volatile unsigned int TA0R __asm__("0x0350");

extern volatile unsigned int TA0CCR0 __asm__("0x0352");

extern volatile unsigned int TA0CCR1 __asm__("0x0354");

extern volatile unsigned int TA0CCR2 __asm__("0x0356");

extern volatile unsigned int TA0IV __asm__("0x036E");

extern volatile unsigned int TA0EX0 __asm__("0x0360");
# 3813 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned int TA1CTL __asm__("0x0380");

extern volatile unsigned int TA1CCTL0 __asm__("0x0382");

extern volatile unsigned int TA1CCTL1 __asm__("0x0384");

extern volatile unsigned int TA1CCTL2 __asm__("0x0386");

extern volatile unsigned int TA1R __asm__("0x0390");

extern volatile unsigned int TA1CCR0 __asm__("0x0392");

extern volatile unsigned int TA1CCR1 __asm__("0x0394");

extern volatile unsigned int TA1CCR2 __asm__("0x0396");

extern volatile unsigned int TA1IV __asm__("0x03AE");

extern volatile unsigned int TA1EX0 __asm__("0x03A0");
# 3858 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned int TA2CTL __asm__("0x0400");

extern volatile unsigned int TA2CCTL0 __asm__("0x0402");

extern volatile unsigned int TA2CCTL1 __asm__("0x0404");

extern volatile unsigned int TA2R __asm__("0x0410");

extern volatile unsigned int TA2CCR0 __asm__("0x0412");

extern volatile unsigned int TA2CCR1 __asm__("0x0414");

extern volatile unsigned int TA2IV __asm__("0x042E");

extern volatile unsigned int TA2EX0 __asm__("0x0420");
# 3897 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned int TA3CTL __asm__("0x0440");

extern volatile unsigned int TA3CCTL0 __asm__("0x0442");

extern volatile unsigned int TA3CCTL1 __asm__("0x0444");

extern volatile unsigned int TA3R __asm__("0x0450");

extern volatile unsigned int TA3CCR0 __asm__("0x0452");

extern volatile unsigned int TA3CCR1 __asm__("0x0454");

extern volatile unsigned int TA3IV __asm__("0x046E");

extern volatile unsigned int TA3EX0 __asm__("0x0460");
# 3936 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned int TB0CTL __asm__("0x03C0");

extern volatile unsigned int TB0CCTL0 __asm__("0x03C2");

extern volatile unsigned int TB0CCTL1 __asm__("0x03C4");

extern volatile unsigned int TB0CCTL2 __asm__("0x03C6");

extern volatile unsigned int TB0CCTL3 __asm__("0x03C8");

extern volatile unsigned int TB0CCTL4 __asm__("0x03CA");

extern volatile unsigned int TB0CCTL5 __asm__("0x03CC");

extern volatile unsigned int TB0CCTL6 __asm__("0x03CE");

extern volatile unsigned int TB0R __asm__("0x03D0");

extern volatile unsigned int TB0CCR0 __asm__("0x03D2");

extern volatile unsigned int TB0CCR1 __asm__("0x03D4");

extern volatile unsigned int TB0CCR2 __asm__("0x03D6");

extern volatile unsigned int TB0CCR3 __asm__("0x03D8");

extern volatile unsigned int TB0CCR4 __asm__("0x03DA");

extern volatile unsigned int TB0CCR5 __asm__("0x03DC");

extern volatile unsigned int TB0CCR6 __asm__("0x03DE");

extern volatile unsigned int TB0EX0 __asm__("0x03E0");

extern volatile unsigned int TB0IV __asm__("0x03EE");
# 4103 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char UCA0CTLW0_L __asm__("0x05C0");
extern volatile unsigned char UCA0CTLW0_H __asm__("0x05C0+1");
extern volatile unsigned int UCA0CTLW0 __asm__("0x05C0");



extern volatile unsigned char UCA0CTLW1_L __asm__("0x05C2");
extern volatile unsigned char UCA0CTLW1_H __asm__("0x05C2+1");
extern volatile unsigned int UCA0CTLW1 __asm__("0x05C2");

extern volatile unsigned char UCA0BRW_L __asm__("0x05C6");
extern volatile unsigned char UCA0BRW_H __asm__("0x05C6+1");
extern volatile unsigned int UCA0BRW __asm__("0x05C6");



extern volatile unsigned char UCA0MCTLW_L __asm__("0x05C8");
extern volatile unsigned char UCA0MCTLW_H __asm__("0x05C8+1");
extern volatile unsigned int UCA0MCTLW __asm__("0x05C8");

extern volatile unsigned char UCA0STATW __asm__("0x05CA");

const extern volatile unsigned char UCA0RXBUF_L __asm__("0x05CC");
const extern volatile unsigned char UCA0RXBUF_H __asm__("0x05CC+1");
const extern volatile unsigned int UCA0RXBUF __asm__("0x05CC");

extern volatile unsigned char UCA0TXBUF_L __asm__("0x05CE");
extern volatile unsigned char UCA0TXBUF_H __asm__("0x05CE+1");
extern volatile unsigned int UCA0TXBUF __asm__("0x05CE");

extern volatile unsigned char UCA0ABCTL __asm__("0x05D0");

extern volatile unsigned char UCA0IRCTL_L __asm__("0x05D2");
extern volatile unsigned char UCA0IRCTL_H __asm__("0x05D2+1");
extern volatile unsigned int UCA0IRCTL __asm__("0x05D2");



extern volatile unsigned char UCA0IE_L __asm__("0x05DA");
extern volatile unsigned char UCA0IE_H __asm__("0x05DA+1");
extern volatile unsigned int UCA0IE __asm__("0x05DA");

extern volatile unsigned char UCA0IFG_L __asm__("0x05DC");
extern volatile unsigned char UCA0IFG_H __asm__("0x05DC+1");
extern volatile unsigned int UCA0IFG __asm__("0x05DC");

extern volatile unsigned int UCA0IV __asm__("0x05DE");
# 4160 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char UCA1CTLW0_L __asm__("0x05E0");
extern volatile unsigned char UCA1CTLW0_H __asm__("0x05E0+1");
extern volatile unsigned int UCA1CTLW0 __asm__("0x05E0");



extern volatile unsigned char UCA1CTLW1_L __asm__("0x05E2");
extern volatile unsigned char UCA1CTLW1_H __asm__("0x05E2+1");
extern volatile unsigned int UCA1CTLW1 __asm__("0x05E2");

extern volatile unsigned char UCA1BRW_L __asm__("0x05E6");
extern volatile unsigned char UCA1BRW_H __asm__("0x05E6+1");
extern volatile unsigned int UCA1BRW __asm__("0x05E6");



extern volatile unsigned char UCA1MCTLW_L __asm__("0x05E8");
extern volatile unsigned char UCA1MCTLW_H __asm__("0x05E8+1");
extern volatile unsigned int UCA1MCTLW __asm__("0x05E8");

extern volatile unsigned char UCA1STATW __asm__("0x05EA");

const extern volatile unsigned char UCA1RXBUF_L __asm__("0x05EC");
const extern volatile unsigned char UCA1RXBUF_H __asm__("0x05EC+1");
const extern volatile unsigned int UCA1RXBUF __asm__("0x05EC");

extern volatile unsigned char UCA1TXBUF_L __asm__("0x05EE");
extern volatile unsigned char UCA1TXBUF_H __asm__("0x05EE+1");
extern volatile unsigned int UCA1TXBUF __asm__("0x05EE");

extern volatile unsigned char UCA1ABCTL __asm__("0x05F0");

extern volatile unsigned char UCA1IRCTL_L __asm__("0x05F2");
extern volatile unsigned char UCA1IRCTL_H __asm__("0x05F2+1");
extern volatile unsigned int UCA1IRCTL __asm__("0x05F2");



extern volatile unsigned char UCA1IE_L __asm__("0x05FA");
extern volatile unsigned char UCA1IE_H __asm__("0x05FA+1");
extern volatile unsigned int UCA1IE __asm__("0x05FA");

extern volatile unsigned char UCA1IFG_L __asm__("0x05FC");
extern volatile unsigned char UCA1IFG_H __asm__("0x05FC+1");
extern volatile unsigned int UCA1IFG __asm__("0x05FC");

extern volatile unsigned int UCA1IV __asm__("0x05FE");
# 4218 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char UCB0CTLW0_L __asm__("0x0640");
extern volatile unsigned char UCB0CTLW0_H __asm__("0x0640+1");
extern volatile unsigned int UCB0CTLW0 __asm__("0x0640");



extern volatile unsigned char UCB0CTLW1_L __asm__("0x0642");
extern volatile unsigned char UCB0CTLW1_H __asm__("0x0642+1");
extern volatile unsigned int UCB0CTLW1 __asm__("0x0642");

extern volatile unsigned char UCB0BRW_L __asm__("0x0646");
extern volatile unsigned char UCB0BRW_H __asm__("0x0646+1");
extern volatile unsigned int UCB0BRW __asm__("0x0646");



extern volatile unsigned char UCB0STATW_L __asm__("0x0648");
extern volatile unsigned char UCB0STATW_H __asm__("0x0648+1");
extern volatile unsigned int UCB0STATW __asm__("0x0648");



extern volatile unsigned char UCB0TBCNT_L __asm__("0x064A");
extern volatile unsigned char UCB0TBCNT_H __asm__("0x064A+1");
extern volatile unsigned int UCB0TBCNT __asm__("0x064A");

const extern volatile unsigned char UCB0RXBUF_L __asm__("0x064C");
const extern volatile unsigned char UCB0RXBUF_H __asm__("0x064C+1");
const extern volatile unsigned int UCB0RXBUF __asm__("0x064C");

extern volatile unsigned char UCB0TXBUF_L __asm__("0x064E");
extern volatile unsigned char UCB0TXBUF_H __asm__("0x064E+1");
extern volatile unsigned int UCB0TXBUF __asm__("0x064E");

extern volatile unsigned char UCB0I2COA0_L __asm__("0x0654");
extern volatile unsigned char UCB0I2COA0_H __asm__("0x0654+1");
extern volatile unsigned int UCB0I2COA0 __asm__("0x0654");

extern volatile unsigned char UCB0I2COA1_L __asm__("0x0656");
extern volatile unsigned char UCB0I2COA1_H __asm__("0x0656+1");
extern volatile unsigned int UCB0I2COA1 __asm__("0x0656");

extern volatile unsigned char UCB0I2COA2_L __asm__("0x0658");
extern volatile unsigned char UCB0I2COA2_H __asm__("0x0658+1");
extern volatile unsigned int UCB0I2COA2 __asm__("0x0658");

extern volatile unsigned char UCB0I2COA3_L __asm__("0x065A");
extern volatile unsigned char UCB0I2COA3_H __asm__("0x065A+1");
extern volatile unsigned int UCB0I2COA3 __asm__("0x065A");

extern volatile unsigned char UCB0ADDRX_L __asm__("0x065C");
extern volatile unsigned char UCB0ADDRX_H __asm__("0x065C+1");
extern volatile unsigned int UCB0ADDRX __asm__("0x065C");

extern volatile unsigned char UCB0ADDMASK_L __asm__("0x065E");
extern volatile unsigned char UCB0ADDMASK_H __asm__("0x065E+1");
extern volatile unsigned int UCB0ADDMASK __asm__("0x065E");

extern volatile unsigned char UCB0I2CSA_L __asm__("0x0660");
extern volatile unsigned char UCB0I2CSA_H __asm__("0x0660+1");
extern volatile unsigned int UCB0I2CSA __asm__("0x0660");

extern volatile unsigned char UCB0IE_L __asm__("0x066A");
extern volatile unsigned char UCB0IE_H __asm__("0x066A+1");
extern volatile unsigned int UCB0IE __asm__("0x066A");

extern volatile unsigned char UCB0IFG_L __asm__("0x066C");
extern volatile unsigned char UCB0IFG_H __asm__("0x066C+1");
extern volatile unsigned int UCB0IFG __asm__("0x066C");

extern volatile unsigned int UCB0IV __asm__("0x066E");
# 4788 "/opt/ti/include/msp430fr5969.h"
extern volatile unsigned char WDTCTL_L __asm__("0x015C");
extern volatile unsigned char WDTCTL_H __asm__("0x015C+1");
extern volatile unsigned int WDTCTL __asm__("0x015C");
# 1538 "/opt/ti/include/msp430.h" 2
# 45 "../driverlib/inc/hw_memmap.h" 2







# 1 "/opt/ti/include/msp430fr5xx_6xxgeneric.h" 1
# 53 "../driverlib/inc/hw_memmap.h" 2
# 47 "../driverlib/wdt_a.c" 2


# 1 "../driverlib/wdt_a.h" 1
# 100 "../driverlib/wdt_a.h"
extern void WDT_A_hold(uint16_t baseAddress);
# 114 "../driverlib/wdt_a.h"
extern void WDT_A_start(uint16_t baseAddress);
# 127 "../driverlib/wdt_a.h"
extern void WDT_A_resetTimer(uint16_t baseAddress);
# 161 "../driverlib/wdt_a.h"
extern void WDT_A_initWatchdogTimer(uint16_t baseAddress,
                                    uint8_t clockSelect,
                                    uint8_t clockDivider);
# 196 "../driverlib/wdt_a.h"
extern void WDT_A_initIntervalTimer(uint16_t baseAddress,
                                    uint8_t clockSelect,
                                    uint8_t clockDivider);
# 50 "../driverlib/wdt_a.c" 2

# 1 "/opt/ti/msp430-elf/include/assert.h" 1 3
# 9 "/opt/ti/msp430-elf/include/assert.h" 3
# 1 "/opt/ti/msp430-elf/include/_ansi.h" 1 3
# 15 "/opt/ti/msp430-elf/include/_ansi.h" 3
# 1 "/opt/ti/msp430-elf/include/newlib.h" 1 3
# 16 "/opt/ti/msp430-elf/include/_ansi.h" 2 3
# 1 "/opt/ti/msp430-elf/include/sys/config.h" 1 3



# 1 "/opt/ti/msp430-elf/include/machine/ieeefp.h" 1 3
# 5 "/opt/ti/msp430-elf/include/sys/config.h" 2 3
# 17 "/opt/ti/msp430-elf/include/_ansi.h" 2 3
# 10 "/opt/ti/msp430-elf/include/assert.h" 2 3
# 39 "/opt/ti/msp430-elf/include/assert.h" 3
void __assert (const char *, int, const char *) __attribute__ ((__noreturn__))
                                 ;
void __assert_func (const char *, int, const char *, const char *) __attribute__ ((__noreturn__))
                                 ;
# 52 "../driverlib/wdt_a.c" 2

void WDT_A_hold(uint16_t baseAddress)
{

    uint8_t newWDTStatus =
        (((*((volatile uint16_t *)((uint16_t)baseAddress + (0x000C)))) & 0x00FF) | (0x0080));

    (*((volatile uint16_t *)((uint16_t)baseAddress + (0x000C)))) = (0x5A00) + newWDTStatus;
}

void WDT_A_start(uint16_t baseAddress)
{

    uint8_t newWDTStatus =
        (((*((volatile uint16_t *)((uint16_t)baseAddress + (0x000C)))) & 0x00FF) & ~((0x0080)));

    (*((volatile uint16_t *)((uint16_t)baseAddress + (0x000C)))) = (0x5A00) + newWDTStatus;
}

void WDT_A_resetTimer(uint16_t baseAddress)
{

    uint8_t newWDTStatus =
        (((*((volatile uint16_t *)((uint16_t)baseAddress + (0x000C)))) & 0x00FF) | (0x0008));

    (*((volatile uint16_t *)((uint16_t)baseAddress + (0x000C)))) = (0x5A00) + newWDTStatus;
}

void WDT_A_initWatchdogTimer(uint16_t baseAddress,
                             uint8_t clockSelect,
                             uint8_t clockDivider)
{
    (*((volatile uint16_t *)((uint16_t)baseAddress + (0x000C)))) =
        (0x5A00) + (0x0008) + (0x0080) + clockSelect + clockDivider;
}

void WDT_A_initIntervalTimer(uint16_t baseAddress,
                             uint8_t clockSelect,
                             uint8_t clockDivider)
{
    (*((volatile uint16_t *)((uint16_t)baseAddress + (0x000C)))) =
        (0x5A00) + (0x0008) + (0x0080) + (0x0010) + clockSelect + clockDivider;
}
