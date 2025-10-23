; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Question 1: Write a program in Assembly language using the Irvine32 library that takes 5 integers from
	the user and counts how many numbers are positive, negative, and zero. Display the results.
!

INCLUDE Irvine32.inc

.data
	prompt BYTE "Enter an integer: ",0
	msg1 BYTE "Total Positive numbers: ",0
	msg2 BYTE "Total Negative numbers: ",0
	msg3 BYTE "Total Zeroes: ",0
	posCount DWORD 0
	negCount DWORD 0
	zeroCount DWORD 0

.code
main PROC
	mov ecx, 5

input:
	mov edx, OFFSET prompt
	call WriteString
	call ReadInt
	cmp eax, 0
	jg Positive
	jl Negative
	je Zero

Positive:
	inc posCount
	jmp Next

Negative:
	inc negCount
	jmp Next

Zero:
	inc zeroCount

Next:
	loop input

	call CRLF
	call CRLF

	mov edx, OFFSET msg1
	call WriteString
	mov eax, posCount
	call WriteDec
	call CRLF

	mov edx, OFFSET msg2
	call WriteString
	mov eax, negCount
	call WriteDec
	call CRLF

	mov edx, OFFSET msg3
	call WriteString
	mov eax, zeroCount
	call WriteDec
	call CRLF

	exit
main ENDP
END main
