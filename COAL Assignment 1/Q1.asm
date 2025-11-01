; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 01

INCLUDE Irvine32.inc

.code
main PROC
	mov eax, 3
	mov ebx, 7
	push eax
	push ebx
	pop eax
	push 10
	pop ebx
	pop eax

	exit
main ENDP
END main
