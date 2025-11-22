; Rayyan Aamir | 24K-0687 | BCS-3F
INCLUDE Irvine32.inc

.data
	string1 BYTE "this is first string" ,0
	string2 BYTE "this is second string",0

.code
main PROC
	cld
	mov esi, OFFSET string1
	mov edi, OFFSET string2
	mov ecx, SIZEOF string1
	rep movsb
	mov edx, OFFSET string2
	call WriteString

	exit
main ENDP
END main
