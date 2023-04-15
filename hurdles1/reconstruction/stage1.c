#include <stdbool.h>
#include "reconstruction.h"


int stage1(int param_1, char **argv)
{
  int uVar1;
  unsigned long gottabeBiggerA;
  char *firstword;

  firstword = argv[1];
  gottabeBiggerA = indexOfNullChar(firstword);
  if (gottabeBiggerA < 0xb)
  {
    return 0;
  }
  // do {
  //   if (((DAT_006eeef4 - 1) * DAT_006eeef4 & 1) == 0) break;
  // } while (((DAT_006eeef4 - 1) * DAT_006eeef4) % 2 != 0);
  if (*firstword != '1')
  {
    return 0;
  }
  if (firstword[1] != '_')
  {
    return 0;
  }
  if (firstword[2] != 'k')
  {
    return 0;
  }
  do
  {
    // if (((DAT_006eeef4 + 0xb572a6db) * DAT_006eeef4 & 1) != 0)
    // goto LAB_00400a2c;
    do
    {
      // if (((DAT_006eeef4 - 1) * DAT_006eeef4 & 1) == 0)
      {
        if (firstword[3] != 'n')
        {
          return 0;
        }
        if (firstword[4] != '0')
        {
          return 0;
        }
        if (firstword[5] != 'w')
        {
          return 0;
        }
        goto LAB_00400a7b;
      }

      // LAB_00400a2c:
    } while (true); //(int)DAT_006eeef8 < 0x27);
  } while (true);

  while (true) // 0x55 < (int)DAT_006eeef8)
  {
  LAB_00400a7b:
    break;
    // if (((DAT_006eeef4 - 1) * DAT_006eeef4 & 1) == 0) break;
  }
  uVar1 = 0;
  if ((firstword[6] == '_') && (uVar1 = 0, firstword[7] == 'h'))
  {
    // do {
    // } while (0x4d < (int)DAT_006eeef8);
    uVar1 = 0;
    if (firstword[8] == '0')
    {
      // do {
      // } while (0x5a < (int)DAT_006eeef8);
      uVar1 = 0;
      if (firstword[9] == 'w')
      {
        /*do {
          uVar1 = DAT_006eeef8;
          if ((int)DAT_006eeef8 < 0x19) break;
          uVar1 = DAT_006eeef4;
        } while (((DAT_006eeef4 - 1) * DAT_006eeef4 & 1) != 0);*/
        uVar1 = uVar1 & 0xffffff00 | (int)(firstword[10] == '_');
        //}
      }
    }
    return uVar1;
  }
  return 0;
}