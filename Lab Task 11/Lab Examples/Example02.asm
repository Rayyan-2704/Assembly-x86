; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Comparing Doublewords
!
INCLUDE Irvine32.inc

.data
	greater BYTE "source > target",0
	lessOrEqual BYTE "source <= target",0
	source BYTE "abcd",0
	target BYTE "abc",0

.code
main PROC
	mov esi, OFFSET source
	mov edi, OFFSET target
	cmpsd
	ja L1
	mov edx, OFFSET lessOrEqual
	call WriteString
	jmp endd

L1:
	mov edx, OFFSET greater
	call writestring

endd:
	exit
main ENDP
END main
