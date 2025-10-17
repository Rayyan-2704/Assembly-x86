; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Q3 Write an Assembly program that reads up to 5 numbers from the user. If the
    user enters 0, the program should stop taking input immediately. Use ECX as a
    counter and control the loop using LOOPNZ or LOOPNE. After the loop ends,
    display how many valid (non-zero) numbers were entered.
!

INCLUDE Irvine32.inc

.data
    counter DWORD 5
    prompt1 BYTE "Enter 5 non-zero numbers: ",0
    msg BYTE "The total number of non-zero number inputs are ",0

.code
main PROC
    mov edx, OFFSET prompt1
    call WriteString
    call CRLF

    mov ecx, counter
    mov ebx, 0

input_nonzero_numbers:
    call ReadInt
    cmp eax, 0
    jne increment

    continue_loop:
    loopnz input_nonzero_numbers

    jmp display

increment:
    inc ebx
    jmp continue_loop

display:
    mov edx, OFFSET msg
    call WriteString
    mov eax, ebx
    call WriteDec
    call CRLF

    exit
main ENDP
END main
