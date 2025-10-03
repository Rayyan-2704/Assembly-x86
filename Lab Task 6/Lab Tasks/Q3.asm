; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Write a program that prints the following star pattern using nested loops:
	*
	**
	***
	****
	*****
	Outer loop controls the number of rows.
	Inner loop prints stars (*) in each row using WriteChar.
!

INCLUDE Irvine32.inc

.data
	rows DWORD 5
	star BYTE '*', 0

.code
main PROC
	mov ecx, rows
	mov ebx, 1

	print_star:
		mov edx, ecx
		mov ecx, ebx

		inner_loop:
			mov al, star
			call WriteChar
			loop inner_loop

		call CRLF
		inc ebx
		mov ecx, edx
		loop print_star

	exit
main ENDP
END main
