.intel_syntax noprefix
.global main
main:
	push 3
	push 0
	push 5
	pop rdi
	pop rax
	sub rax, rdi
	push rax
	pop rdi
	pop rax
	imul rax, rdi
	push rax
	push 27
	pop rdi
	pop rax
	add rax, rdi
	push rax
	pop rax
	ret
