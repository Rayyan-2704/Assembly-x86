; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Q: A machine configuration requires this computation: 111b – 12 + 1F3h – 745o.
    Implement it in Assembly.
!

INCLUDE Irvine32.inc

.code
main PROC
	mov eax, 111b
	sub eax, 12
	add eax, 1F3h
	sub eax, 745o

	call WriteInt

	exit
main ENDP
END main
