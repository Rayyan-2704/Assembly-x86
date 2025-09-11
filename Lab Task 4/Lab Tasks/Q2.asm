; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task # 02: Declare a signed byte variable with value -50 and an unsigned byte variable with value 200.
	Use movzx to load the unsigned value into a 32-bit register.
	Use movsx to load the signed value into another 32-bit register.
	Display both results with DumpRegs.
!

INCLUDE Irvine32.inc

.data
	signedValue SBYTE -50
	unsignedValue BYTE 200

.code
main PROC
	movzx eax, unsignedValue
	movsx ebx, signedValue

	call DumpRegs
	exit
main ENDP
END main
