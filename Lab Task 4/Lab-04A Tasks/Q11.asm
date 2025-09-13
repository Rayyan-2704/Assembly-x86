; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 11:
	i. Write an instruction to increment the value stored in val2.
	ii. Write an instruction to subtract the contents of val3 from the EAX register.
	iii. Write instructions to subtract the contents of val4 from the contents of val2.
	iv. Write an instruction to move the value stored in val1 into the BL register.
!

INCLUDE Irvine32.inc

.data
	val1 BYTE 10h
	val2 WORD 8000h
	val3 DWORD 0FFFFh
	val4 WORD 7FFFh

	msg1 BYTE "After incrementing val2: ", 0
	msg2 BYTE "After subtracting val3 from EAX: ", 0
	msg3 BYTE "After subtracting val4 from val2: ", 0
	msg4 BYTE "Value of BL after moving val1: ", 0

.code
main PROC
	; i. Incrementing val2
	inc val2
	movzx eax, val2
	mov edx, OFFSET msg1
	call WriteString
	call WriteInt
	call CRLF
	
	; ii. Subtracting val3 from eax
	mov eax, 1234678h  ; random value
	sub eax, val3
	mov edx, OFFSET msg2
	call WriteString
	call WriteInt
	call CRLF

	; iii. Subtracting val4 from val2
	mov ax, val2
	sub ax, val4
	mov val2, ax
	movzx eax, val2
	mov edx, OFFSET msg3
	call WriteString
	call WriteInt
	call CRLF
	
	; iv. Moving val1 to BL
	mov bl, val1
	movzx eax, bl
	mov edx, OFFSET msg4
	call WriteString
	call WriteInt
	call CRLF

	exit
main ENDP
END main
