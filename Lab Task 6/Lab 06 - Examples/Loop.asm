; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	The usecase of loop in Assembly
!

INCLUDE Irvine32.inc

.data
	counter DWORD 10

.code 
main PROC
	mov ecx, counter
	mov eax, 1
	
	print_numbers:
		call WriteDec
		call CRLF
		inc eax
		loop print_numbers

	exit
main ENDP
END main
