; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Question 5: Write a program in Assembly language using the Irvine32 library that takes a number from
	the user and calculates its factorial. Display the result.
!

INCLUDE Irvine32.inc

.data
	prompt BYTE "Enter a number: ",0
	msg BYTE "Factorial: ",0
	num DWORD ?

.code
main PROC
	mov edx, OFFSET prompt
	call WriteString
	call ReadInt
	mov ecx, eax

	call Factorial

	call CRLF
	call CRLF
	mov edx, OFFSET msg
	call WriteString
	call WriteDec

	exit
main ENDP

Factorial PROC
	mov eax, 1

calculate:
	cmp ecx, 0
	je done
	mul ecx
	dec ecx
	jmp calculate

done:
	ret
Factorial ENDP

END main
