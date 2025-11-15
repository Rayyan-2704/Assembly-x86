; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Example 01
!

INCLUDE Irvine32.inc

.data
    var1 DWORD 5
    var2 DWORD 6

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
    mov ebp, esp

    mov eax, [ebp+8]
    add eax, [ebp+12]

    pop ebp
    ret
AddTwo ENDP

END main
