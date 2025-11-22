; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    1. Create a procedure named Scan_String to find the index of the first occurrence of the character "#" in the given string.
!

INCLUDE Irvine32.inc

.data
    Str1 BYTE "127&j~3#^&*#*#45^",0
    msg1 BYTE "Index: ",0
    msg2 BYTE "Not Found!",0
    toFind BYTE '#',0

.code
main PROC
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
    mov edi, OFFSET Str1
    mov al, BYTE PTR toFind
    mov ecx, LENGTHOF Str1

    cld
    repne scasb
    jnz not_found

    dec edi
    sub edi, OFFSET Str1
    mov eax, edi
    jmp return

not_found:
    mov eax, -1

return:
    ret
Scan_String ENDP

END main
