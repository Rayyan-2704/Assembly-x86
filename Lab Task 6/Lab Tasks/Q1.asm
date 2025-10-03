; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Write an assembly program that displays the following three lines:
	-> "Welcome"
	-> "You should not see this line"
	-> "Goodbye"
	But use an unconditional jump (JMP) so that the second message is skipped, and only "Welcome" and
	"Goodbye" appear on the screen.
!

INCLUDE Irvine32.inc

.data
	msg1 BYTE "Welcome", 0
	msg2 BYTE "You should not see this line", 0
	msg3 BYTE "Goodbye", 0

.code
main PROC
	mov edx, OFFSET msg1
	call WriteString
	call CRLF

	jmp skip_message2	; skipping message 2

	mov edx, OFFSET msg2
	call WriteString
	call CRLF

	skip_message2:
	mov edx, OFFSET msg3
	call WriteString
	call CRLF

	exit
main ENDP
END main
