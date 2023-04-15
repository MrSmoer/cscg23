#include <stdint.h>
#include <stdbool.h>
#include "reconstruction.h"
#include "stage3.h"

void p4is1plus2_5is3plusx16(long param_1,long param_2,long param_3,long *param_4,uint64_t *param_5)
{
  *param_4 = param_1 + param_2;
  *param_5 = *(uint64_t *)(param_3 + 0x16);
  return;
}

void copyOneToTwo(char *param_1, uint64_t *param_2)
{
  *param_2 = *param_1;
  return;
}

void secondIsFirstxorx66(uint8_t *param_1,unsigned long *param_2)
{
  *param_2 = (unsigned long)*param_1 ^ 0x66;
  return;
}


void p2is1xorx77lshift30(unsigned char param_1,unsigned long *param_2)
{
  *param_2 = (unsigned long)(param_1 ^ 0x77) << 0x30;
  return;
}


uint64_t stage3(unsigned long argc,char **argv)

{
  long lVar1;
  char *pcVar2;
  unsigned char bVar3;
  unsigned long lenOfWord;
  unsigned char bVar4;
  unsigned char bVar5;
  unsigned char bVar6;
  unsigned char bVar7;
  unsigned char bVar8;
  unsigned char bVar9;
  unsigned char bVar10;
  unsigned char bVar11;
  unsigned char local_41;
  uint64_t local_40;
  char *firstword;
  
  firstword = argv[1];
  lenOfWord = indexOfNullChar(firstword);
  pcVar2 = firstword;
  switch(lenOfWord < 0x21) {
  case false:
    
    secondIsFirstxorx66((unsigned char *)(firstword + 0x12),&local_40);
    lVar1 = CONCAT71(local_40._1_7_,(unsigned char)local_40);
    copyOneToTwo(pcVar2 + 0x17,(char *)&local_40);
    bVar3 = (unsigned char)local_40 ^ 0x44;
    bVar5 = ~pcVar2[0xf];
    bVar4 = bVar5 & 0x11;
    bVar7 = pcVar2[0xf] ^ 0xee;
    bVar5 = bVar5 & 0x11;
    bVar6 = ~(bVar5 ^ bVar7 | bVar7 & bVar5);
    bVar5 = pcVar2[0x10];
    bVar10 = ~bVar5;
    bVar8 = ~(~(~(bVar5 & 0x66 | bVar10 ^ 0x99) | bVar5 & 0x99 ^ bVar10 & 0x66) | bVar10 ^ 0x99);
    bVar9 = bVar5 & 0x99 ^ bVar10 & 0x66;
    bVar10 = bVar10 & 0x99;
    bVar11 = ~bVar10 & bVar9;
    bVar7 = ~(bVar9 ^ bVar10) & bVar11;
    bVar5 = ~(bVar9 ^ bVar10) ^ bVar11;
    bVar5 = ~(bVar5 ^ bVar7 | bVar7 & bVar5);
    bVar5 = bVar5 ^ bVar11 | bVar5 & bVar11;
    bVar9 = ~(bVar5 ^ bVar9 & bVar10 | bVar9 & bVar10 & bVar5);
    bVar7 = pcVar2[0x15];
    bVar5 = pcVar2[0x20];
    p2is1xorx77lshift30(pcVar2[0x19],&local_40);
    p4is1plus2_5is3plusx16(lVar1 + 0x1234567812345678 + (unsigned long)bVar3 * 0x100 +
               (unsigned long)(unsigned char)(bVar6 ^ bVar4 | bVar4 & bVar6) * 0x10000 +
               (unsigned long)(unsigned char)(bVar9 ^ bVar8 | bVar8 & bVar9) * 0x1000000 +
               (((unsigned long)bVar7 ^ 0x22) << 0x20) + ((unsigned long)(bVar5 ^ 0x88) << 0x28),
               CONCAT71(local_40._1_7_,(unsigned char)local_40),(long)pcVar2,&local_40,&local_41);

    bVar5 = ~(~local_41 ^ 0xff);
    bVar5 = ~(local_41 | bVar5) | bVar5;
    bVar7 = ~bVar5;
    bVar5 = bVar5 & 0xcc | bVar7 & 0x33;
    bVar7 = bVar7 & 0xcc;
    bVar3 = ~(bVar5 ^ bVar7);
    bVar4 = bVar3 & bVar7;
    bVar5 = ~bVar7 & bVar5;
    bVar5 = ~(bVar3 | bVar5) | bVar5;
    bVar7 = ~(bVar5 ^ bVar4 | bVar4 & bVar5);
    bVar5 = (~(~(~local_41 ^ 0xcc) | local_41 & 0xcc) & 0xcc | local_41 & 0xcc) ^ bVar7;
    bVar7 = ~bVar5 & bVar7;
    lenOfWord = CONCAT71(local_40._1_7_,(unsigned char)local_40) +
                ((unsigned long)(unsigned char)(bVar7 ^ bVar5 | bVar7 & bVar5) << 0x38) + 0x3d77d3e81545bddd;
    lenOfWord = (lenOfWord ^ 0xa6c4f78aa6b6e1bf) + (lenOfWord & 0xa6c4f78aa6b6e1bf) * 2 +
                0x1bc3348d44036064;
    lenOfWord = lenOfWord & 0xffffffffffffff00 | (unsigned long)(lenOfWord == 0x197c13b9bb82c978);
    break;
  case true:
    lenOfWord = 0;
  }
  return lenOfWord;
}






