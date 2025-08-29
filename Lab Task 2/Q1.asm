; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: Assume all registers (EAX, EBX, ECX, EDX) initially hold some values.
	   EDX Calculation: A processor performs: edx = eax + 3 + ebx – ecx + 12h – 45o + 89d
!

INCLUDE Irvine32.inc

.code
main PROC
	mov edx, eax
	add edx, 3
	add edx, ebx
	sub edx, ecx
	add edx, 12h
	sub edx, 45o
	add edx, 89

	; moving the value of edx into eax to print it
	mov eax, edx
	call WriteInt

	exit
main ENDP
END main
