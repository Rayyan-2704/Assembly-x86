; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: A system receives mixed-format data: 101110 (binary) + 50Ah (hex) + 67d (decimal) + 1010001 (binary) + F (hex).
	Compute the total value.
!

INCLUDE Irvine32.inc

.data
	answer DWORD ?

.code
main PROC
	mov eax, 101110b
	add eax, 50Ah
	add eax, 67
	add eax, 1010001b
	add eax, 0Fh

	mov answer, eax  ; storing the final answer into the 'answer' variable
	mov eax, answer  ; loading the value back to eax register to print it
	call WriteInt

	exit
main ENDP
END main
