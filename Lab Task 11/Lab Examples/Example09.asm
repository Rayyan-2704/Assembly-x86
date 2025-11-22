; Rayyan Aamir | 24K-0687 | BCS-3F
INCLUDE Irvine32.inc

.data
    str1 BYTE "Rayyanaaaaaaaaa",0

.code
main PROC
    INVOKE Str_trim, ADDR str1, 'a'
    mov edx, OFFSET str1
    call WriteString
    exit
main ENDP
END main
