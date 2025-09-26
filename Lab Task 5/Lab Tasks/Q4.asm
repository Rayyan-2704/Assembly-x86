; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 04  Define three arrays in the .data section as follows: 
	arrayB: BYTE array with elements 25, 45, and 65. 
	arrayW: WORD array with elements 155, 185, and 225. 
	arrayD: DWORD array with elements 645, 690, and 735. 

	Declare three DWORD variables to store the sum of elements from each array: SUM1, SUM2, and SUM3. 
	In the code section, write a main procedure that follows these steps:  
	Load the addresses of the arrays into registers. 
	Calculate SUM1 as the sum of the first elements of each array (arrayB[0] + arrayw[0] + arrayD[0]). 
	Calculate SUM2 as the sum of the second elements of each array (arrayB [1] + arrayw[1] + arrayD[1]). 
 
	Output: 
	Calculate SUM3 as the sum of the third elements of each array (arrayB[2] + arrayW[2] + arrayD[2]). 
	Display the results using WriteDec and Crlf procedures from the Irvine32 library.  
!

INCLUDE Irvine32.inc

.data
	arrayB BYTE  25, 45, 65
    arrayW WORD  155, 185, 225
    arrayD DWORD 645, 690, 735
	SUM1 DWORD ?
	SUM2 DWORD ?
	SUM3 DWORD ?

.code
main PROC
	; computing SUM1 = arrayB[0] + arrayw[0] + arrayD[0]
	movzx eax, BYTE PTR arrayB[0]
	movzx ebx, WORD PTR arrayW[0]
	add eax, ebx
	add eax, arrayD[0]
	mov SUM1, eax

	; computing SUM2 = arrayB[1] + arrayw[1] + arrayD[1]
	movzx eax, BYTE PTR arrayB[1]
	movzx ebx, WORD PTR arrayW[2]
	add eax, ebx
	add eax, arrayD[4]
	mov SUM2, eax

	; computing SUM3 = arrayB[2] + arrayw[2] + arrayD[2]
	movzx eax, BYTE PTR arrayB[2]
	movzx ebx, WORD PTR arrayW[4]
	add eax, ebx
	add eax, arrayD[8]
	mov SUM3, eax

	mov eax, SUM1
    call WriteDec
    call Crlf

    mov eax, SUM2
    call WriteDec
    call Crlf

    mov eax, SUM3
    call WriteDec
    call Crlf

	exit
main ENDP
END main
