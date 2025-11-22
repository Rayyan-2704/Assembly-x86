; Rayyan Aamir | 24K-0687 | BCS-3F
INCLUDE Irvine32.inc

.data
    str1 BYTE "Rayyan Aamir",0

.code
main PROC
    mov eax, 0
    INVOKE Str_length, ADDR str1
    call WriteInt
    exit
main ENDP
END main
