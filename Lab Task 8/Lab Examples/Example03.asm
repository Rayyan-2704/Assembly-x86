; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Example 03
!

INCLUDE Irvine32.inc

.data
	versionHistory  WORD 101, 102, 103, 104, 105
	rollbackHistory WORD 5 DUP(?)
	msg1 BYTE "Version History (Latest Last):", 0
	msg2 BYTE "Rollback Order (After Using PUSH & POP):", 0
	space BYTE " ", 0

.code
main PROC
	call CRLF
	mov edx, OFFSET msg1
	call WriteString
	call CRLF

	mov ecx, LENGTHOF versionHistory
	mov esi, OFFSET versionHistory
display_original:
	movzx eax, WORD PTR [esi]
	call WriteDec
	mov edx, OFFSET space
	call WriteString
	add esi, TYPE versionHistory
	loop display_original

	mov ecx, LENGTHOF versionHistory
	mov esi, OFFSET versionHistory
push_versions:
	mov ax, [esi]
	push ax
	add esi, TYPE versionHistory
	loop push_versions

	mov ecx, LENGTHOF rollbackHistory
	mov edi, OFFSET rollbackHistory
pop_versions:
	pop ax
	mov [edi], ax
	add edi, TYPE rollbackHistory
	loop pop_versions

	call CRLF
	mov edx, OFFSET msg2
	call WriteString
	call CRLF

	mov ecx, LENGTHOF rollbackHistory
	mov esi, OFFSET rollbackHistory
display_rollback:
	movzx eax, WORD PTR [esi]
	call WriteDec
	mov edx, OFFSET space
	call WriteString
	add esi, TYPE rollbackHistory
	loop display_rollback

	call CRLF
	exit
main ENDP
END main
