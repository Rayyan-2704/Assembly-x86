; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Write a small assembly program to compute:
	EAX = 300h + 600h – 100h
!

INCLUDE Irvine32.inc

.code
main PROC
	mov eax, 300h
	add eax, 600h
	sub eax, 100h

	call WriteInt
	
	exit
main ENDP
END main
