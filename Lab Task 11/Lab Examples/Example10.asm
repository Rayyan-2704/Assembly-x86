; Rayyan Aamir | 24K-0687 | BCS-3F
INCLUDE Irvine32.inc

.data
    str1 BYTE "Rayyan",0

.code
main PROC
    INVOKE Str_ucase, ADDR str1
    mov edx, OFFSET str1
    call WriteString
    exit
main ENDP
END main
