#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    char buffer[100];

    if (argc != 2) {
        printf("Usage: %s <input>\n", argv[0]);
        return 1;
    }

    strcpy(buffer, argv[1]);
    printf(buffer);

    return 0;
}