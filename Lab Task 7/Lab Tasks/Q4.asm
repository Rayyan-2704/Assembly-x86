; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Q4 Write the following C program and then convert it into Assembly language
    using CMP and conditional jump instructions (JG, JL, JGE, etc.):
    #include <stdio.h>;
    int main() {
    int a, b;
    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);
    if (a > b && a < 100)
    printf("Condition True\n");
    else
    printf("Condition False\n");
    return 0;
    }
!

INCLUDE Irvine32.inc

.data
    num1 DWORD ?
    num2 DWORD ?
    prompt BYTE "Enter the two numbers: ",0
    msg1 BYTE "Condition True",0
    msg2 BYTE "Condition False",0

.code
main PROC
    mov edx, OFFSET prompt
    call WriteString
    call CRLF

    call ReadInt
    mov num1, eax
    call ReadInt
    mov num2, eax

check_1stcondition:
    mov eax, num1
    cmp eax, num2
    jg check_2ndcondition
    jmp display_false

check_2ndcondition:
    cmp eax, 100
    jl display_true
    jmp display_false

display_true:
    mov edx, OFFSET msg1
    call WriteString
    call CRLF
    jmp end_program

display_false:
    mov edx, OFFSET msg2
    call WriteString
    call CRLF

end_program:
    exit
main ENDP
END main
