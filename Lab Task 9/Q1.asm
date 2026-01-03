; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Write an Assembly Programming Language program using Irvine Library that compares two
    arrays element by element and counts the number of elements that are equal. Display the total
    count of matching elements.
!

INCLUDE Irvine32.inc

.data
    arr1 DWORD 5 DUP(?)
    arr2 DWORD 5 DUP(?)
    matchCount DWORD 0

    prompt1 BYTE "Input values for first array: ",0
    prompt2 BYTE "Input values for second array: ",0
    msgRes BYTE "Matching elements: ",0

.code
main PROC
    mov edx, OFFSET prompt1
    call WriteString
    call CRLF

    mov ecx, LENGTHOF arr1
    mov esi, OFFSET arr1

read_first:
    call ReadInt
    mov [esi], eax
    add esi, TYPE arr1
    loop read_first

    call CRLF
    mov edx, OFFSET prompt2
    call WriteString
    call CRLF

    mov ecx, LENGTHOF arr2
    mov esi, OFFSET arr2

read_second:
    call ReadInt
    mov [esi], eax
    add esi, TYPE arr2
    loop read_second

    mov ecx, LENGTHOF arr1
    mov esi, OFFSET arr1
    mov edi, OFFSET arr2
    mov matchCount, 0

compare_elements:
    mov eax, [esi]
    cmp eax, [edi]
    jne skip_element
    inc matchCount

skip_element:
    add esi, TYPE arr1
    add edi, TYPE arr2
    loop compare_elements

    call CRLF
    mov edx, OFFSET msgRes
    call WriteString
    mov eax, matchCount
    call WriteDec
    call CRLF

    exit
main ENDP
END main
