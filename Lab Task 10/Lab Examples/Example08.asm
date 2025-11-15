; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Example 08
!

INCLUDE Irvine32.inc

.code
main PROC
    mov ecx, 5
    mov eax, 0
    call CalSum
    call WriteInt
    call Crlf

    exit
main ENDP

CalSum PROC
    cmp ecx, 0
    jz  L2

    add eax, ecx
    dec ecx
    call CalSum

L2:
    ret
CalSum ENDP

END main
