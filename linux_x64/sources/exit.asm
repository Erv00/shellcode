section .text
   global _start

_start:
   xor rax, rax
   mov al, 60
   syscall
