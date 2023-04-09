#include <unistd.h>
char* argv="flag";
int main(){
    execve("/bin/cat","flag",NULL);
}