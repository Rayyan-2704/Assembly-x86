; Rayyan Aamir | 24K-0687 | BCS-3F
; Assignment 02 | Question 09

INCLUDE Irvine32.inc

.data
    arr WORD 5,10,51,68,25,50
    sample WORD 50
    arrSize WORD LENGTHOF arr
    index WORD 0
    sum WORD 0
    msg BYTE "Sum: ",0

.code
main PROC
while_loop:
    mov ax, index
    cmp ax, arrSize
    jge exit_loop

    movzx esi, index
    mov cx, arr[esi * TYPE arr]

    cmp cx, sample
    jg greater_than_sample

    mov ax, sum
    add ax, cx
    mov sum, ax

greater_than_sample:
    inc index
    jmp while_loop

exit_loop:
    mov edx, OFFSET msg
    call WriteString
    movzx eax, sum
    call WriteDec

    exit
main ENDP
END main
