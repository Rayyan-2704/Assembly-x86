; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Write a program which contains a procedure named LocalSquare . The procedure must declare a local variable. Initialize this variable by taking an input value from the user and then
    display its square. Use ENTER & LEAVE instructions to allocate and de-allocate the local variable.
!

INCLUDE Irvine32.inc

.data
   msg1 BYTE "Enter a number: ",0
   msg2 BYTE "The square is: ",0

.code
main PROC
    call LocalSquare
    exit
main ENDP

LocalSquare PROC
    enter 4, 0
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt

    mov [ebp - 4], eax
    mov eax, [ebp - 4]

    imul eax, eax

    mov edx, OFFSET msg2
    call WriteString
    call WriteInt
    call CRLF

    leave
    ret
LocalSquare ENDP

END main
