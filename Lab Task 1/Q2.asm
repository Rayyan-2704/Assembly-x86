; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: A bank transaction log shows amounts: 95 – 31 + 240 – 125. Write an Assembly program to compute the final balance.
!

INCLUDE Irvine32.inc

.data
	answer DWORD ?

.code
main PROC
	mov eax, 95
	sub eax, 31
	add eax, 240
	sub eax, 125

	mov answer, eax  ; storing the final answer into the 'answer' variable
	mov eax, answer  ; loading the value back to eax register to print it
	call WriteInt

	exit
main ENDP
END main
