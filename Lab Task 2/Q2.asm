; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: Assume all registers (EAX, EBX, ECX, EDX) initially hold some values.
	   EAX Calculation: In a simulation, compute: eax = 4C2h – ebx + 72o + 55d – 11101011b + 180
!

INCLUDE Irvine32.inc

.code
main PROC
	; assigning random value to register ebx
	mov ebx, 20

	mov eax, 4C2h
	sub eax, ebx
	add eax, 72o
	add eax, 55
	sub eax, 11101011b
	add eax, 180

	call WriteInt

	exit
main ENDP
END main
