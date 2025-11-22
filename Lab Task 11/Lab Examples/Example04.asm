; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Initializes each byte in string1 to 'R'
!
INCLUDE Irvine32.inc

.data
	Count = 10
	string1 BYTE Count DUP(?)

.code
main PROC
	mov al, 'R'
	mov edi, OFFSET string1
	mov ecx, Count
	cld
	rep stosb
	mov edx, OFFSET string1
	call WriteString
	
	exit
main ENDP
END main
