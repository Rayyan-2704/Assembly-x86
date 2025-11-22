; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    2. Modify the above procedure to take offset of string1 and the character to be searched as argument.
!

INCLUDE Irvine32.inc

.data
    Str1 BYTE "127&j~3#^&*#*#45^",0
    msg1 BYTE "Index: ",0
    msg2 BYTE "Not Found!",0

.code
main PROC
    push '#'
    push OFFSET Str1
    push LENGTHOF Str1
    call Scan_String
    cmp eax, -1
    je notFound

    mov edx, OFFSET msg1
    call WriteString
    call WriteDec
    jmp exitt

notFound:
    mov edx, OFFSET msg2
    call WriteString

exitt:
    exit
main ENDP

Scan_String PROC
    push ebp
    mov ebp, esp
    mov ecx, [ebp + 8]
    mov edi, [ebp + 12]
    mov al, BYTE PTR [ebp + 16]

    cld
    repne scasb
    jnz not_found

    dec edi
    sub edi, [ebp + 12]
    mov eax, edi
    jmp return

not_found:
    mov eax, -1

return:
    pop ebp
    ret 12
Scan_String ENDP

END main
