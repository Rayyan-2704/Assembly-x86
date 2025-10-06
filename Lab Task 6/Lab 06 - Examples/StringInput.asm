; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Taking String Input from user
!

INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter your name: ", 0
    msg2 BYTE "Your name is ", 0
    name BYTE 50 DUP(?)

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString

    mov edx, OFFSET name
    mov ecx, LENGTHOF name
    call ReadString

    mov edx, OFFSET msg2
    call WriteString

    mov edx, OFFSET name
    call WriteString

    exit
main ENDP
END main
