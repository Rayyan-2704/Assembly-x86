; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Write a program which contains a procedure named BubbleSort that sorts an array which is passed through a stack using indirect addressing.
!

INCLUDE Irvine32.inc

.data
    arr DWORD 10 DUP(?)
    count DWORD 10
    msg1 BYTE "Enter the elements of the array below",0
    msg2 BYTE "Original Array: ",0
    msg3 BYTE "Sorted Array: ",0
    space BYTE " ",0

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call CRLF
    mov ecx, count
    mov esi, OFFSET arr
input_arr:
    call ReadInt
    mov [esi], eax
    add esi, TYPE arr
    loop input_arr

    call CRLF
    call CRLF
    mov edx, OFFSET msg2
    call WriteString
    push OFFSET arr
    push count
    call PrintArray

    push OFFSET arr
    push count
    call BubbleSort

    call CRLF
    mov edx, OFFSET msg3
    call WriteString
    push OFFSET arr
    push count
    call PrintArray

    exit
main ENDP

PrintArray PROC
    push ebp
    mov ebp, esp

    mov esi, [ebp + 12]
    mov ecx, [ebp + 8]
print_loop:
    mov eax, [esi]
    call WriteInt
    mov edx, OFFSET space
    call WriteString
    add esi, TYPE arr
    loop print_loop

    call CRLF
    pop ebp
    ret 8
PrintArray ENDP

BubbleSort PROC
    push ebp
    mov ebp, esp

    mov edi, [ebp + 12]
    mov ecx, [ebp + 8]
    dec ecx

outer_loop:
    mov ebx, ecx

    mov esi, edi
    mov edx, 0  ; acts as bool isSwapped = false
inner_loop:
    mov eax, [esi];
    cmp eax, [esi + 4]
    jl no_swap

    xchg eax, [esi + 4];
    mov [esi], eax
    mov edx, 1

no_swap:
    add esi, TYPE arr
    loop inner_loop

    cmp edx, 0
    je done

    mov ecx, ebx
    loop outer_loop

done:
    pop ebp
    ret 8
BubbleSort ENDP

END main
