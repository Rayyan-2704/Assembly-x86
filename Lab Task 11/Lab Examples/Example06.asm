; Rayyan Aamir | 24K-0687 | BCS-3F
INCLUDE Irvine32.inc

.data
    str1 BYTE "Rayyan",0
    str2 BYTE "Aamir",0
    msg1 BYTE "str1 is greater than str2",0
    msg2 BYTE "str1 is equal to str2",0
    msg3 BYTE "str1 is lesser than str2",0

.code
main PROC
    invoke str_compare, ADDR str1, ADDR str2

    ja greater_condition
    je equal_condition
    jb less_condition

greater_condition:
    mov edx, OFFSET msg1
    jmp end_if

equal_condition:
    mov edx, OFFSET msg2
    jmp end_if

less_condition:
    mov edx, OFFSET msg3

end_if:
    call WriteString
    exit
main ENDP
END main
