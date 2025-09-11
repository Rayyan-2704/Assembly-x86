; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task # 05: Write a program to:
	Define a constant named MAX using = with value 100.
	Define another constant named MIN using EQU with value 10.
	Use these constants to initialize two variables and then add them together.
	Show the sum with WriteInt.
!

INCLUDE Irvine32.inc

MAX = 100
MIN EQU 10

.data
	num1 DWORD MAX
	num2 DWORD MIN
	result DWORD ?

.code
main PROC
	mov eax, num1
	add eax, num2
	mov result, eax

	call WriteInt
	exit
main ENDP
END main
