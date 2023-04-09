#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

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
    int result;
    ssize_t input;
    char input_buf[40];
    int input_length;
    int i;

    initialize_flag();
    puts("Give me your password: ");
    input = read(0, input_buf, 0x1f);
    input_length = (int)input;
    input_buf[(int)input + -1] = '\0';
    for (i = 0; i < input_length + -1; i = i + 1)
    {
        input_buf[i] = input_buf[i] - 0x77;
    }
    result = strcmp(input_buf, "\002\352\002\350\374\375\275\375\362\354\350\375\373\352\367\374\357\271\373\366\352\375\362\370\367");
    char buf[26] = "\002\352\002\350\374\375\275\375\362\354\350\375\373\352\367\374\357\271\373\366\352\375\362\370\367";
    int d;
    for (d = 0; d < 26 + -1; d = d + 1)
    {
        buf[d] = buf[d] + 0x77;
    }
    printf("input: %s  \n",input_buf);
    printf("pw: %s \n",buf);
    if (result == 0)
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