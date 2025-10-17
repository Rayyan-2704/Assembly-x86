; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
    Q5 Write an Assembly program that sets EAX = 10 and repeatedly subtracts 3
    while the value in EAX remains greater than or equal to zero. Use CMP and JGE
    to simulate the while loop. After the loop ends, display the final value of EAX.
!

INCLUDE Irvine32.inc

.data
    msg BYTE "Final Value of EAX after repeated subtraction of 3: ",0

.code
main PROC
    mov eax, 10
    cmp eax, 0
    jge while_loop

while_loop:
    sub eax, 3
    cmp eax, 0
    jge while_loop

display:
    mov edx, OFFSET msg
    call WriteString
    call WriteInt
    call CRLF

    exit
main ENDP
END main
