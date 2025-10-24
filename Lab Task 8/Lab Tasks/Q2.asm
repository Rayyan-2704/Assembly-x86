; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Question 2: Write a program in Assembly language using the Irvine32 library that takes 5 integers as
	input, reverses their order, and displays the reversed result.
!

INCLUDE Irvine32.inc

.data
	prompt BYTE "Enter any 5 numbers below:",0
	msg BYTE "Reversed Order: ",0
	space BYTE " ",0
	arr DWORD 5 DUP(?)

.code
main PROC
	mov edx, OFFSET prompt
	call WriteString
	call CRLF

	mov ecx, 5
input:
	call ReadInt
	push eax
	loop input

	mov esi, OFFSET arr
	mov ecx, 5
store:
	pop eax
	mov [esi], eax
	add esi, TYPE arr
	loop store

	call CRLF
	call CRLF
	mov edx, OFFSET msg
	call WriteString

	mov ecx, 5
	mov esi, OFFSET arr
output:
	mov eax, [esi]
	call WriteInt
	add esi, TYPE arr
	mov edx, OFFSET space
	call WriteString
	loop output

	exit
main ENDP
END main
