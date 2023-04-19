#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>


void provide_a_little_help() {
  const char* needle = NULL;
  const char* needles[] = {
    "once",
    "[heap]",
    "[stack]",
    NULL
  };
  int i = 0;
  char buf[512] = {0};

  FILE* fp = fopen("/proc/self/maps", "r");
  if (!fp) {
    perror("fopen");
    exit(1);
  }

  while((needle = needles[i]) != NULL) {
    if (!fgets(buf, sizeof(buf), fp) || !buf[0]) {
      break;
    }

    if (strstr(buf, needle)) {
      *strchr(buf, ' ') = '\0';
      printf("%s: %s\n", needle, buf);
      i++;
    }
  }

  fflush(stdout);
}


int main() {
  unsigned char buf[0];

  provide_a_little_help();

  fread(buf, 1, 0x10, stdin);

  return 0;
}
