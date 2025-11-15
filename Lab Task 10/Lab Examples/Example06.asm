; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Example 06
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
    enter 0, 0

    mov eax, [ebp+12]
    add eax, [ebp+8]

    leave
    ret
AddTwo ENDP

END main
