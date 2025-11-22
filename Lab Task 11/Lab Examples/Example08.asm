; Rayyan Aamir | 24K-0687 | BCS-3F
INCLUDE Irvine32.inc

.data
    str1 BYTE "Rayyan",0
    str2 BYTE "Aamir",0

.code
main PROC
    INVOKE Str_copy, ADDR str1, ADDR str2
    mov edx, OFFSET str2
    call WriteString
    exit
main ENDP
END main
