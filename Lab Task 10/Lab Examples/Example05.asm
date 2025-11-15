; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Example 05
!

INCLUDE Irvine32.inc

.code
main PROC
    call MySub
    exit
main ENDP

MySub PROC
    push ebp
    mov ebp, esp
    sub esp, 8

    mov DWORD PTR [ebp-4], 10
    mov DWORD PTR [ebp-8], 20

    mov esp, ebp
    pop ebp
    ret
MySub ENDP

END main
