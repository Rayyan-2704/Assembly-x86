; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 02: Write down the values of the Carry, Sign, Zero, and Overflow flags after each instruction has executed: 
	mov ax, 0A7FFh
	add al, 15h
	add ah, 1h
	add ax, 2h
!

INCLUDE Irvine32.inc

.code
main PROC
	mov ax, 0A7FFh		; Flag Values: CF=0  SF=0  ZF=1  OF=0  AF=0  PF=1  (flags unchanged)
	call DumpRegs
	call CRLF

	add al, 15h			; Flag Values: CF=1  SF=0  ZF=0  OF=0  AF=1  PF=1
	call DumpRegs
	call CRLF

	add ah, 1h			; Flag Values: CF=0  SF=1  ZF=0  OF=0  AF=0  PF=0
	call Dumpregs
	call CRLF

	add ax, 2h			; Flag Values: CF=0  SF=1  ZF=0  OF=0  AF=0  PF=0
	call DumpRegs
	call CRLF

	exit
main ENDP
END main
