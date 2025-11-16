; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Write a program which contains a procedure named TakeInput which takes input numbers from user and call a procedure named Armstrong which checks either a number is an Armstrong
    number or not and display the answer on console by calling anotherfunction Display. (Also show ESP values during nested function calls)
!
INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter a number: ",0
    msg2 BYTE " is an Armstrong number",0
    msg3 BYTE " is not an Armstrong number",0
    msg4 BYTE "ESP: ",0
    num DWORD ?

.code
main PROC
    call TakeInput
    exit
main ENDP

TakeInput PROC
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov num, eax

    mov edx, OFFSET msg4
    call WriteString
    mov eax, esp
    call WriteHex
    call CRLF

    push num
    call Armstrong
    ret
TakeInput ENDP

Armstrong PROC
    push ebp
    mov ebp, esp
    pushad

    mov edx, OFFSET msg4
    call WriteString
    mov eax, esp
    call WriteHex
    call CRLF

    mov eax, [ebp+8]
    mov ebx, eax
    mov ecx, 0
    mov esi, 10

count_digits:
    cmp eax, 0
    je  start_check
    mov edx, 0
    div esi
    inc ecx
    jmp count_digits

start_check:
    mov eax, ebx
    mov edi, 0

sum_digits:
    cmp eax, 0
    je  Compare
    mov edx, 0
    div esi

    push eax
    mov eax, edx
    call CalculatePower
    add edi, eax

    pop eax
    jmp sum_digits

CalculatePower:
    push ecx
    mov ecx, ecx
    dec ecx

    mov edx, eax
    cmp ecx, 0
    je  power_done

power_loop:
    imul eax, edx
    loop power_loop

power_done:
    pop ecx
    ret

compare:
    cmp edi, ebx
    jne NotArmstrong
    push ebx
    push 1
    call Display
    jmp Done

NotArmstrong:
    push ebx
    push 0
    call Display

Done:
    popad
    pop ebp
    ret 4
Armstrong ENDP

Display PROC
    push ebp
    mov ebp, esp

    mov edx, OFFSET msg4
    call WriteString
    mov eax, esp
    call WriteHex
    call CRLF

    mov eax, [ebp+12]
    call WriteDec

    cmp DWORD PTR [ebp+8], 1
    jne not_armstrong_display
    mov edx, OFFSET msg2
    jmp display_done

not_armstrong_display:
    mov edx, OFFSET msg3

display_done:
    call WriteString
    call CRLF

    pop ebp
    ret 8
Display ENDP

END main
