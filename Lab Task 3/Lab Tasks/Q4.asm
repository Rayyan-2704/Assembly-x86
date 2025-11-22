; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Write assembly code to load the following immediate values into the register EBX:
	Decimal value 90
	Hexadecimal value 5Ah
	Binary value 01011010b
	ASCII character ‘B’    ; use the ASCII value of 'B' here i.e. 66
	All four should load the same value in EBX.
!

INCLUDE Irvine32.inc

.code
main PROC
	mov ebx, 90
	add ebx, 5Ah
	add ebx, 01011010b
	add ebx, 66

	mov eax, ebx
	call WriteInt
	
	exit
main ENDP
END main
