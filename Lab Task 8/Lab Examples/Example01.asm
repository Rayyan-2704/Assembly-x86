; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Example 01
!

INCLUDE Irvine32.inc

.data
	msg1 BYTE "Final value of EBX after nested loops: ", 0

.code
main PROC
	mov ebx, 0
	mov ecx, 5

L1:
	push ecx
	mov ecx, 10

L2:
	inc ebx
	loop L2

	pop ecx
	loop L1

	mov edx, OFFSET msg1
	call WriteString
	mov eax, ebx
	call WriteDec
	call CRLF

	exit
main ENDP
END main
