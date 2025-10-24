; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Question 3: Write a program in Assembly language using the Irvine32 library that takes 5 integers from
	the user and finds the largest and smallest numbers. Display both values.
!

INCLUDE Irvine32.inc

.data
	prompt BYTE "Enter any 5 numbers below:",0
	largestNum DWORD -99999
	smallestNum DWORD 99999
	msg1 BYTE "Largest Number: ",0
	msg2 BYTE "Smallest Number: ",0

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

	mov ecx, 5
compare:
	pop eax
	cmp eax, largestNum
	jle skipLargest
	mov largestNum, eax

skipLargest:
	cmp eax, smallestNum
	jge skipSmallest
	mov smallestNum, eax

skipSmallest:
	loop compare

print:
	call CRLF
	call CRLF
	mov edx, OFFSET msg1
	call WriteString
	mov eax, largestNum
	call WriteInt

	call CRLF
	mov edx, OFFSET msg2
	call WriteString
	mov eax, smallestNum
	call WriteInt

	exit
main ENDP
END main
