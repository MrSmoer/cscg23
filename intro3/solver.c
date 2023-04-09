#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
typedef unsigned char byte;

char flagBuffer[0x102];
void initialize_flag(void)
{
    FILE *__stream;

    __stream = fopen("./flag.txt", "r");
    if (__stream == (FILE *)0x0)
    {
        printf("File \"%s\" not found. If this happens on remote, report to an admin. Otherwise, please  place a file \"flag.txt\" next to this binary. Exiting...\n", "flag.txt");
        /* WARNING: Subroutine does not return */
        exit(-1);
    }
    fread(flagBuffer, 0x100, 1, __stream);
    fclose(__stream);
    return;
}
int main(void)

{
    int iVar1;
    ssize_t sVar2;
    byte input_buf[40];
    byte result_buf[26] = "b9yPw:MwqcoHuFz^r-o*{>I\x10Y";
    //byte result_buf[40];
    int input;
    int i;

    initialize_flag();
    puts("Give me your password: ");
    sVar2 = read(0, input_buf, 0x1f);
    input = (int)sVar2;
    input_buf[(int)sVar2 + -1] = 0;
    for (i = 0; i < input + -1; i = i + 1)
    {
        input_buf[i] = (char)i + 10U ^ input_buf[i];
        input_buf[i] = input_buf[i] - 2;
        
    }
    printf("input %d", input);
    printf("Encoded %s\n", (char *)input_buf);
    iVar1 = strcmp((char *)input_buf, "b9yPw:MwqcoHuFz^r-o*{>I\x10Y");
    int g;
    /*for (g = 0; g < input + -1; g = g + 1)
    {
        result_buf[g] = input_buf[g];
    }*/


    for (i = 0; i < 26 + -1; i = i + 1)
    {
        result_buf[i] = result_buf[i] + 2;
        result_buf[i] = (char)i + 10U ^ result_buf[i];
    }
    printf("Decoded %s\n", (char *)result_buf);

    if (iVar1 == 0)
    {
        puts("Thats the right password!");
        printf("Flag: %s", flagBuffer);
    }
    else
    {
        puts("Thats not the password!");
    }
    return 0;
}