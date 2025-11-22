; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Scan for a Matching Character
!
INCLUDE Irvine32.inc

.data
	s1 BYTE "Rayyan",0
	found BYTE "Letter found!",0

.code
main PROC
	mov edi, OFFSET s1
	mov al, 'R'
	mov ecx, LENGTHOF s1
	cld
	repne scasb
	jnz quit
	dec edi
	mov edx, OFFSET found
	call WriteString

quit:
	exit
main ENDP
END main
