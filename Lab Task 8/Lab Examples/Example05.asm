; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Example 05
!

INCLUDE Irvine32.inc

.data
	msg BYTE "The largest number is: ", 0

.code
main PROC
	push 5
	push 7
	push 3
	push 2

	mov eax, 0
	mov ecx, 4

L1:
	pop edx
	cmp edx, eax
	jle Next
	mov eax, edx
Next:
	loop L1

	mov edx, OFFSET msg
	call WriteString
	call WriteDec
	call CRLF

	exit
main ENDP
END main
