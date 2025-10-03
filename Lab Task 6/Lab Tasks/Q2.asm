; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Write a program that prints numbers from 5 to 15 using a LOOP instruction.
	Use ECX as the counter.
	Use WriteInt to display each number.
!

INCLUDE Irvine32.inc

.data
	num DWORD 5
	counter DWORD 11

.code
main PROC
	mov ecx, counter

	print_nums:
		mov eax, num
		call WriteInt
		call CRLF
		inc num
		loop print_nums

	exit
main ENDP
END main
