; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	The usecase of JMP operator
!

INCLUDE Irvine32.inc

.data
	msg1 BYTE "This is the first message being displayed!", 0
	msg2 BYTE "This is the second message being displayed!", 0

.code 
main PROC
	mov edx, OFFSET msg1
	call WriteString
	call CRLF

	jmp skip_second_message
		
	mov edx, OFFSET msg2
	call WriteString
	call CRLF

	skip_second_message:
		exit
main ENDP
END main
