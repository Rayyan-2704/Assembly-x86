; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: A machine configuration requires this computation: 111b – 12 + 1F3h – 745o.
    Implement it in Assembly.
!

INCLUDE Irvine32.inc

.data
	answer DWORD ?

.code
main PROC
	mov eax, 111b
	sub eax, 12
	add eax, 1F3h
	sub eax, 745o

	mov answer, eax  ; storing the final answer into the 'answer' variable
	mov eax, answer  ; loading the value back to eax register to print it
	call WriteInt

	exit
main ENDP
END main
