; Rayyan Aamir | 24K-0687 | BCS-3F
INCLUDE Irvine32.inc

.data
	arr DWORD 1,2,3,4,5,6,7,8,9,10
	multiplier DWORD 10

.code
main PROC
	cld
	mov esi, OFFSET arr
	mov edi, esi
	mov ecx, LENGTHOF arr

L1:
	Lodsd
	mul multiplier
	Stosd
	loop L1

	mov esi, OFFSET arr
	mov edi, esi
	mov ecx, LENGTHOF arr

L2:
	Lodsd
	call WriteInt
	call CRLF
	loop L2
	
	exit
main ENDP
END main
