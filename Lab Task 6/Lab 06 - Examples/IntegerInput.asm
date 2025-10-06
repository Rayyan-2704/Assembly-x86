; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Taking Integer Input from the user
!

INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter a number: ", 0
    msg2 BYTE "You entered: ", 0
    num  SDWORD ?

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString        ; Prompt user to enter a number
    call ReadInt            ; Read integer input from user
    mov num, eax            ; Store the input value in 'num'

    call CRLF
    mov edx, OFFSET msg2
    call WriteString        ; Display message before showing the number

    mov eax, num
    call WriteInt           ; Print the entered integer

    exit
main ENDP
END main
