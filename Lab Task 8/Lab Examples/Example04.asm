; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Example 04
!

INCLUDE Irvine32.inc

.data
	multiple DWORD 3
	msg   BYTE "The product of the three integers is: ", 0

.code
main PROC
	mov eax, 1
	mov ecx, 3

PushLoop:
	push multiple
	add multiple, 2
	loop PushLoop

	mov ecx, 3

MultiplyLoop:
	pop ebx
	mul ebx
	loop MultiplyLoop

	mov edx, OFFSET msg
	call WriteString
	call WriteDec
	call CrLf

	exit
main ENDP
END main
