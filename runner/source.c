//Compile with "gcc -o runner source.c" for Linux
int main(void)
{
    char shellcode[] = SHELLCODE_HERE;

    (*(void (*)()) shellcode)();
     
    return 0;
}
