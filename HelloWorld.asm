section .text
global _start

_start:
mov edx,len ; copia o tamanho da string (len) no registrador edx
mov ecx,msg ; copia a string de mensagem no registrador ecx
mov ebx,1 ; guarda o valor 1 em ebx (queremos escrever algo em stdout)
mov eax,4 ; para printar string
int 0x80 ; corresponde a uma chamada ao sistema (imprime mensagem)
mov eax,1 ; para sair do programa
int 0x80  ; chamada ao sistema ( vai finalizar a execução do código)

section .data
msg db 'Hello,World!',0xa  ; String com a mensagem
len equ $ - msg ; Tamanho da string msg