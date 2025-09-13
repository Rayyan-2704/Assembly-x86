; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 10: Let A = 0FF10 h and B = 0E10B h, you need to write an assembly language code to
	swap the contents.
!

INCLUDE Irvine32.inc

.data
	valA DWORD 0FF10h
	valB DWORD 0E10Bh

.code
main PROC
	mov eax, valA
	mov ebx, valB

	xchg eax, ebx
	mov valA, eax
	mov valB, ebx

	call DumpRegs
	exit
main ENDP
END main
