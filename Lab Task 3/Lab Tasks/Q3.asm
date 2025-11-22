; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Declare a variable named num1 initialized with 500.
	Declare another variable named num2 initialized with 200.
	Write assembly instructions to:
	1. Load both into registers.
	2. Add them.
	3. Store the result in EAX.
!

INCLUDE Irvine32.inc

.data
	num1 DWORD 500
	num2 DWORD 200

.code
main PROC
	mov ebx, 500
	mov ecx, 200

	add ebx, ecx
	mov eax, ebx
	call WriteInt
	
	exit
main ENDP
END main
