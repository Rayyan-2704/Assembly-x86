; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: A company records six numbers: 25 , 47 , 88 , 64 , 120h ,and 27o.
	Subtract 0Ah from their total and display the result.
!

INCLUDE Irvine32.inc

.data
	answer DWORD ?

.code
main PROC
	mov eax, 25
	add eax, 47
	add eax, 88
	add eax, 64
	add eax, 120h
	add eax, 27o
	sub eax, 0Ah

	mov answer, eax  ; storing the final answer into the 'answer' variable
	mov eax, answer  ; loading the value back to eax register to print it
	call WriteInt

	exit
main ENDP
END main
