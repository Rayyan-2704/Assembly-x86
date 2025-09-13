; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 6: Initialize a value 10. Increment it 3 times, then decrement it 2 times.
!

INCLUDE Irvine32.inc

.data
	value DWORD 10

.code
main PROC
	mov eax, value
	inc eax
	inc eax
	inc eax
	dec eax
	dec eax

	mov value, eax
	call WriteInt

	exit
main ENDP
END main
