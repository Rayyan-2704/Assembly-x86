; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Example 02
!

INCLUDE Irvine32.inc

.data
    var1 DWORD 5
    var2 DWORD 6

    x_param EQU [ebp+8]
    y_param EQU [ebp+12]

.code
main PROC
    push var2
    push var1

    call AddTwo
    call WriteInt
    call CRLF

    exit
main ENDP

AddTwo PROC
    push ebp
    mov  ebp, esp

    mov eax, x_param
    add eax, y_param

    pop ebp
    ret
AddTwo ENDP

END main
