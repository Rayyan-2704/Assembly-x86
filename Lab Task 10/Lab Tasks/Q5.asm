; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Write a non-recursive version of the procedure Fact that uses a loop to calculate factorial of given number n.
!

INCLUDE Irvine32.inc

.data
    var1 DWORD ?
    msg1 BYTE "Enter a number: ",0
    msg2 BYTE "Factorial is: ",0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov var1, eax

    mov ecx, var1
    call Fact

    mov edx, OFFSET msg2
    call WriteString
    call WriteInt
    call CRLF

    exit
main ENDP

Fact PROC
    mov eax, 1
while_loop:
    cmp ecx, 1
    jle end_while

    imul eax, ecx
    dec ecx
    jmp while_loop

end_while:
    ret
Fact ENDP

END main
