#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "stage1.h"
#include "stage2.h"
#include "stage3.h"

long indexOfNullChar(char *param_1)
{
  long lVar1;
  long lVar2;
  long lVar3;

  if (*param_1 != '\0')
  {
    lVar3 = 0;
    do
    {
      lVar1 = lVar3 + 1;
      lVar2 = lVar3 + 1;
      lVar3 = lVar1;
    } while (param_1[lVar2] != '\0');
    return lVar1;
  }
  return 0;
}

unsigned long nullIndexUnderX23(int argc, char **argv)
{
  unsigned long nullCharIndex;

  if (argc == 2)
  {
    nullCharIndex = indexOfNullChar(argv[1]);
    return nullCharIndex & 0xffffffffffffff00 | (unsigned long)(nullCharIndex < 0x23);
  }
  return 0;
}

int main(int argc, char **argv)
{
  char passes4;
  int passes1;
  unsigned long passes1or3;
  unsigned int passes2;
  unsigned long numOfArgs;

  numOfArgs = (unsigned long)argc;
  passes1or3 = nullIndexUnderX23(argc, argv);
  if (((char)passes1or3 != '\0') && (passes1 = stage1(numOfArgs, argv), (char)passes1 != '\0'))
  {
    puts("You have completed stage 1");
    passes2 = 1; // stage2(numOfArgs,argv);
    if ((char)passes2 != '\0')
    {
      puts("You have completed stage 2");
      // FUN_0048ab10(numOfArgs,argv);
      passes1or3 = stage3(numOfArgs, argv);
      if ((char)passes1or3 != '\0')
      {
        puts("You have completed stage 3");
        /*passes4 = stage4(numOfArgs,(char *)argv);
        if (passes4 != '\0') {
          puts("You have completed stage 4");
          printf("Here is your flag: cscg{%s}\n",argv[1]);
          return 0;
        }*/
      }
    }
  }
  puts("Bad input");
  return 0xffffffff;
}