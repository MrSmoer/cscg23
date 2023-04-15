#include "reconstruction.h"
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>

uint64_t stage2(int64_t argc, char **argv)

{
  uint8_t nullCharPosition;
  uint64_t retVal;
  unsigned char negFirstChar;
  char cVar1;
  unsigned char bVar2;
  unsigned char bVar3;
  char *firstword;

  firstword = argv[1];
  nullCharPosition = indexOfNullChar(firstword);
  switch (nullCharPosition < 0xf)
  {
  case false:
    negFirstChar = -firstword[0xb];
    cVar1 = (negFirstChar & 0x67) * '\x02' + (negFirstChar ^ 0xe7);
    negFirstChar = -cVar1 - 0x19;
    bVar2 = cVar1 + 0x18;
    switch ((unsigned char)((negFirstChar & 0xd0) * '\x02' +
                            (((bVar2 & negFirstChar | bVar2) ^ negFirstChar) & 0xd0 ^ negFirstChar)) < 10)
    {
    case false:
      retVal = 0;
      break;
    case true:
      puts("pass1");
      bVar2 = -firstword[0xc];
      negFirstChar = bVar2 ^ 0x30;
      switch ((unsigned char)-((~negFirstChar & bVar2) * '\x02' + negFirstChar) < 10)
      {
      case false:
        retVal = 0;
        break;
      case true:
        puts("pass2");
        negFirstChar = firstword[0xd] - 0x39;
        bVar2 = ~negFirstChar;
        switch ((unsigned char)(~(~(negFirstChar ^ 0x2f) & ~(bVar2 ^ negFirstChar ^ 0x2f) | bVar2) * '\x02' +
                                (negFirstChar & 0x2f | bVar2 & 0xd0) + 0x39) < 10)
        {
        case false:
          retVal = 0;
          break;
        case true:
          puts("pass3");
          negFirstChar = firstword[0xe];
          bVar3 = ~negFirstChar;
          bVar2 = ~(~(negFirstChar & 0xd0 | bVar3 ^ 0x2f) |
                    bVar3 & (bVar3 ^ 0x2f) | negFirstChar & 0x2f) *
                  '\x02';
          bVar3 = (bVar3 & 0xd0 ^ negFirstChar & 0x2f) + 0x5f;
          switch ((unsigned char)((bVar3 & bVar2) * '\x02' + (bVar3 ^ bVar2) + 0xa1) < 10)
          {
          case false:
            retVal = 0;
            break;
          case true:
            puts("pass4");
            retVal = 0xa6e3a29dbfb83000+
                              *(uint64_t *)(((uint64_t)(unsigned char)firstword[0xb] * 1000 + 0x2c8e2eb120231781 +
                                          (uint64_t)(unsigned char)firstword[0xc] * 100 +
                                          (uint64_t)(unsigned char)firstword[0xd] * 10 + (uint64_t)negFirstChar) *
                                             2 +
                                         -0x591c5d623fff17e2) == 0x3419;
          }
        }
      }
    }
    break;
  case true:
    retVal = 0;
  }
  return retVal;
}