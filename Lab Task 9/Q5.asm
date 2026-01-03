; Rayyan Aamir | 24K-0687 | BCS-3F

INCLUDE Irvine32.inc

.data
    values DWORD 10 DUP(?)
    total DWORD 0
    average DWORD 0
    highCount DWORD 0
    lowCount DWORD 0
    scaledVal DWORD 0
    encrypted BYTE 0

    promptIn BYTE "Enter sensor readings: ",0
    msgTotal BYTE "Total of readings = ",0
    msgAvg BYTE "Average Reading = ",0
    msgHigh BYTE "Readings above average = ",0
    msgLow BYTE "Readings below average = ",0
    msgScaled BYTE "Scaled average (Shift Left) = ",0
    msgEnc BYTE "Encrypted average (Rotate Right) = ",0

.code
main PROC
   mov ecx, LENGTHOF values
   mov esi, OFFSET values

input_loop:
    mov edx, OFFSET promptIn
    call WriteString
    call ReadInt
    mov [esi], eax
    add esi, TYPE values
    loop input_loop

    call ComputeAverage

    mov ecx, LENGTHOF values
    mov esi, OFFSET values
    mov highCount, 0
    mov lowCount, 0

count_loop:
    mov eax, [esi]
    cmp eax, average
    jg inc_high
    jl inc_low
    jmp next_item

inc_high:
    inc highCount
    jmp next_item

inc_low:
    inc lowCount

next_item:
    add esi, TYPE values
    loop count_loop

    mov eax, average
    shl eax, 1
    mov scaledVal, eax

    mov bl, BYTE PTR scaledVal
    ror bl, 1
    mov encrypted, bl

    mov edx, OFFSET msgTotal
    call WriteString
    mov eax, total
    call WriteDec
    call CRLF

    mov edx, OFFSET msgAvg
    call WriteString
    mov eax, average
    call WriteDec
    call CRLF

    mov edx, OFFSET msgHigh
    call WriteString
    mov eax, highCount
    call WriteDec
    call CRLF

    mov edx, OFFSET msgLow
    call WriteString
    mov eax, lowCount
    call WriteDec
    call CRLF

    mov edx, OFFSET msgScaled
    call WriteString
    mov eax, scaledVal
    call WriteDec
    call CRLF

    mov edx, OFFSET msgEnc
    call WriteString
    movzx eax, encrypted
    call WriteBin
    call CRLF

    exit
main ENDP

ComputeAverage PROC
    mov ecx, LENGTHOF values
    mov esi, OFFSET values
    mov eax, 0

sum_loop:
    add eax, [esi]
    add esi, TYPE values
    loop sum_loop

    mov total, eax
    mov ebx, LENGTHOF values
    xor edx, edx
    div ebx
    mov average, eax
    ret
ComputeAverage ENDP

END main
