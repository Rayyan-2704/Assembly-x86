; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 04

INCLUDE Irvine32.inc

.code
main PROC
	mov ax, 0h
	mov ecx, 0Ah

DOLOOP:
	dec ax
	loop DOLOOP

	movzx eax, ax
	call WriteHex

	exit
main ENDP
END main
