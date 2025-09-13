; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 7: Define a constant PI = 3. Use it in a program to calculate PI * 4.
!

INCLUDE Irvine32.inc

PI = 3

.data
	result DWORD ?

.code
main PROC
	mov eax, PI
	imul eax, 4

	mov result, eax
	call WriteInt

	exit
main ENDP
END main
