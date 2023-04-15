#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

int main(int argc, char **argv)
{
    unsigned char bVar2;
    unsigned char bVar3;
    unsigned char negFirstChar;
    negFirstChar = 0;
    while (negFirstChar < 0xff)
    {
        printf("Looking at %c ", negFirstChar);
        // negFirstChar = firstword[0xe];
        bVar3 = ~negFirstChar;
        bVar2 = ~(~(negFirstChar & 0xd0 | bVar3 ^ 0x2f) |
                  bVar3 & (bVar3 ^ 0x2f) | negFirstChar & 0x2f) *
                '\x02';
        bVar3 = (bVar3 & 0xd0 ^ negFirstChar & 0x2f) + 0x5f;
        switch ((unsigned char)((bVar3 & bVar2) * '\x02' + (bVar3 ^ bVar2) + 0xa1) < 10)
        {
        case false:
            break;
        case true:
            puts("victory");
        }
        negFirstChar++;
    }
}
