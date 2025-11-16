; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Write a program which contains a procedure named MinMaxArray that displays the minimum & maximum values in an array. Pass a size-20 array by reference to this procedure.
!

INCLUDE Irvine32.inc

.data
    arr DWORD 20 DUP(?)
    msg1 BYTE "Enter 20 numbers below: ",0
    msg2 BYTE "Minimum value in the array is ",0
    msg3 BYTE "Maximum value in the array is ",0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call CRLF

    mov esi, OFFSET arr
    mov ecx, LENGTHOF arr
input_arr:
    call ReadInt
    mov [esi], eax
    add esi, TYPE arr
    loop input_arr

    push OFFSET arr
    call MinMaxArray

    exit
main ENDP

MinMaxArray PROC
    push ebp
    mov ebp, esp

    mov esi, [ebp+8]
    mov eax, [esi]
    mov ebx, [esi]

    mov ecx, LENGTHOF arr
    dec ecx
    add esi, TYPE arr

find_minmax:
    mov edx, [esi]
    cmp edx, eax
    jl new_min
    cmp edx, ebx
    jg new_max
    jmp next

new_min:
    mov eax, edx
    jmp next

new_max:
    mov ebx, edx

next:
    add esi, TYPE arr
    loop find_minmax

    call CRLF
    mov edx, OFFSET msg2
    call WriteString
    call WriteInt
    call Crlf

    mov edx, OFFSET msg3
    call WriteString
    mov eax, ebx
    call WriteInt

    pop ebp
    ret 4
MinMaxArray ENDP

END main
