; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Example 07
!

INCLUDE Irvine32.inc

.code
main PROC
    call LocalProc
    call WriteInt
    call CRLF

    exit
main ENDP

LocalProc PROC
    LOCAL temp: DWORD

    mov temp, 5
    mov eax, temp

    ret
LocalProc ENDP

END main
