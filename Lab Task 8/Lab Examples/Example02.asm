; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Example 02
!

INCLUDE Irvine32.inc

.data
	num1 WORD 35
	num2 WORD 25
	msg1 BYTE "Initial Numbers: ", 0
	msg2 BYTE "Sum after POP (A + B): ", 0
	msg3 BYTE "Final Result after PUSH & POP: ", 0
	space BYTE " ", 0

.code
main PROC
	call CRLF
	mov edx, OFFSET msg1
	call WriteString
	call CRLF

	movzx eax, num1
	call WriteDec
	mov edx, OFFSET space
	call WriteString
	movzx eax, num2
	call WriteDec
	call CrLf

	mov ax, num1
	push ax
	mov ax, num2
	push ax

	pop bx
	pop ax
	add ax, bx

	call CRLF
	mov edx, OFFSET msg2
	call WriteString
	movzx eax, ax
	call WriteDec
	call CRLF

	push ax
	pop bx

	call CRLF
	mov edx, OFFSET msg3
	call WriteString
	movzx eax, bx
	call WriteDec
	call CRLF

	exit
main ENDP
END main
