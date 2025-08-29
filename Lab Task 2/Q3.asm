; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: Assume all registers (EAX, EBX, ECX, EDX) initially hold some values.
	   EBX Calculation: A program requires: ebx = 6F1h – eax + 92d + 47o – 11011001b + 6Ch
!

INCLUDE Irvine32.inc

.code
main PROC
	mov ebx, 6F1h
	sub ebx, eax
	add ebx, 92
	add ebx, 47o
	sub ebx, 11011001b
	add ebx, 6Ch

	; moving the value of ebx into eax to print it
	mov eax, ebx
	call WriteInt

	exit
main ENDP
END main
