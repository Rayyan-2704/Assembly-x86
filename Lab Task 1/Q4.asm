; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: A hardware counter records values: 11010110b – 9C4h + 220 + 18 + 1011110b – D + 12.
	Write Assembly code to calculate the result.
!

INCLUDE Irvine32.inc

.data
	answer DWORD ?

.code
main PROC
	mov eax, 11010110b
	sub eax, 9C4h
	add eax, 220
	add eax, 18
	add eax, 1011110b
	sub eax, 0Dh
	add eax, 12

	mov answer, eax  ; storing the final answer into the 'answer' variable
	mov eax, answer  ; loading the value back to eax register to print it
	call WriteInt

	exit
main ENDP
END main
