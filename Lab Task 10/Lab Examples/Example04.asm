; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Example 04
!

INCLUDE Irvine32.inc

.code
main PROC
    call MakeArray
    exit
main ENDP

MakeArray PROC
    push ebp
    mov ebp, esp
    sub esp, 32

    lea esi, [ebp-30]
    mov ecx, 30
L1:
    mov BYTE PTR [esi], '*'
    inc esi
    loop L1

    mov ecx, 30
    lea esi, [ebp-30]

print_loop:
    mov  al, BYTE PTR [esi]
    inc  esi
    call WriteChar
    loop print_loop

    add esp, 32
    pop ebp
    ret
MakeArray ENDP

END main
