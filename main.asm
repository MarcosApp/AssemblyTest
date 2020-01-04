section	.text
	global _start       ;deve ser declarado para usar o gcc
_start:                     ;informar o ponto de entrada do vinculador
	mov	edx, len    ;comprimento da mensagem
	mov	ecx, msg    ;mensagem para escrever
	mov	ebx, 1	    ;descritor de arquivo (stdout)
	mov	eax, 4	    ;número de chamada do sistema (sys_write)
	int	0x80        ;chamar o kernel
	mov	eax, 1	    ;número de chamada do sistema (sys_exit)
	int	0x80        ;chamar o kernel

section	.data

msg	db	'Primeiro Codigo Assembly', 0xa	;nossa querida string
len	equ	$ - msg			;comprimento da nossa querida string