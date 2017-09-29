section .text
   global _start

_start:
   push 0x74736574
   mov rdi, rsp
   mov si, 0777
   mov al, 2
   syscall

   mov rdi, rax

   mov rax, 0x0a7a736176657a73
   shr rax, 0x8
   push rax
   mov rsi, rsp
   mov dl, 8
   xor rax,rax
   mov al, 1
   syscall

   mov al, 3
   syscall

   xor rax,rax
   mov al, 60
   syscall
