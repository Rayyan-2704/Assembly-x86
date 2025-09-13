; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 10: Declare an uninitialized string variable of 100 characters named msg. Then store the
	string " COMPUTER ORGANIZATION & ASSEMBLY LANGUAGE LAB" in it as a null-terminated string.
!

INCLUDE Irvine32.inc

.data
	destMessage BYTE 100 DUP(?)
	sourceMessage BYTE "COMPUTER ORGANIZATION AND ASSEMBLY LANGUAGE LAB", 0

.code
main PROC
	mov esi, OFFSET sourceMessage  ; stores the base address of source message
	mov edi, OFFSET destMessage	   ; stores the base address of destination message

	mov ecx, LENGTHOF sourceMessage  ; number of bytes in source message moved to ecx register

	cld   ; clears direction flag to ensure the esi and edi pointer moves to the right
	rep movsb  ; rep is used to replicate ecx times and movsb copies on byte from esi to edi on each repetition

	mov edx, OFFSET destMessage
	call WriteString

	exit
main ENDP
END main
