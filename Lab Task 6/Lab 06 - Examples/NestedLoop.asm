; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	The usecase of nested loop in Assembly
!

INCLUDE Irvine32.inc

.data
	rows DWORD 5
	initial_cols DWORD 1
	asterisk BYTE "*", 0

.code 
main PROC
	mov ecx, rows
	mov edx, OFFSET asterisk
	
	outer_loop:
		mov ebx, ecx
		mov ecx, initial_cols

		inner_loop:	
			call WriteString
			loop inner_loop

		call CRLF
		inc initial_cols
		mov ecx, ebx
		loop outer_loop

		exit
main ENDP
END main
