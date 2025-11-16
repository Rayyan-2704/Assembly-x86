; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Write a program which contains a procedure named ThreeProd that displays the product of three numeric parameters passed through a stack.
!

INCLUDE Irvine32.inc

.data
    msg BYTE "The product is ",0

.code
main PROC
    push 2
    push 3
    push 4

    call ThreePod
    exit
main ENDP

ThreePod PROC
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    imul eax, [ebp + 12]
    imul eax, [ebp + 16]

    mov edx, OFFSET msg
    call WriteString
    call WriteInt
    call CRLF

    pop ebp
    ret
ThreePod ENDP

END main
