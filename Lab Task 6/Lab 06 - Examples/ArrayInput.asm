; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Creating an array by taking input for the size and elements of the array from the user
!

INCLUDE Irvine32.inc

.data
	promptSize BYTE "Enter the size of the array: ",0
	promptElement BYTE "Enter the element ",0
	ff BYTE ": ",0
	promptDisplay BYTE "--------- Printing the array below ---------",0
	s WORD ?
	arr WORD 20 DUP(?)

.code
main PROC
	mov edx, OFFSET promptSize
	call WriteString
	call ReadInt
	mov s, ax

	movzx ecx, s
	mov esi, OFFSET arr
	mov ebx, 1
	call CRLF

	input_elements:
		mov edx, OFFSET promptElement
		call WriteString
		mov eax, ebx
		call WriteDec
		mov edx, OFFSET ff
		call WriteString
		call ReadInt

		mov [esi], ax
		inc ebx
		add esi, TYPE arr
	loop input_elements


	movzx ecx, s
	mov esi, OFFSET arr
	mov ebx, 1
	call CRLF
	mov edx, OFFSET promptDisplay
	call WriteString
	call CRLF

	print_elements:
		movzx eax, WORD PTR [esi]
		call WriteDec
		call CRLF
		add esi, TYPE arr
	loop print_elements

	exit
main ENDP
END main
