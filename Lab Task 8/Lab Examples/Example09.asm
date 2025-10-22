; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Example 09
!

INCLUDE Irvine32.inc

.data
	var1 DWORD 5
	var2 DWORD 6
	msg1 BYTE "The sum calculated in AddTwo is: ", 0
	msg2 BYTE "Values printed inside AddTwo1:", 0

.code
main PROC
	call AddTwo
	call CRLF
	exit
main ENDP

AddTwo PROC
	mov eax, var1
	mov ebx, var2
	add eax, var2

	mov edx, OFFSET msg1
	call WriteString
	call WriteInt
	call CRLF

	call AddTwo1
	ret
AddTwo ENDP

AddTwo1 PROC
	mov ecx, var1
	mov esi, var2

	mov edx, OFFSET msg2
	call WriteString
	call CRLF

	mov eax, ecx
	call WriteInt
	call CRLF

	mov eax, esi
	call WriteInt
	call CRLF

	ret
AddTwo1 ENDP

END main
