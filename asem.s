.global _start
.intel_syntax noprefix


# Video tutorial:
#   https://www.youtube.com/watch?v=6S5KRJv-7RU 
# How to create object file:
#   as asem.s -o asem.o
# How to compile:
#   gcc -o asem.o -nostdlib -static
# syscall docs:
#   https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/ 

_start:
	# Calling sys_write
	mov rax, 1
	mov rdi, 1
	lea rsi, [hello_world]
	mov rdx, 14
	syscall

	# Calling sys_exit
	mov rax, 60
	mov rdi, 69
	syscall

hello_world:
	.asciz "Hello, World!\n"
