; Rayyan Aamir | 24K-0687 | BCS-3F
COMMENT !
	Task 2: A customer has 5000 in his account. He deposits 1200 and then withdraws 2000. Use
	ADD and SUB instructions to update the balance.
!

INCLUDE Irvine32.inc

.data
	balance DWORD 5000
	deposit DWORD 1200
	withdrawal DWORD 2000

.code
main PROC
	mov eax, balance
	add eax, deposit
	sub eax, withdrawal

	mov balance, eax
	call WriteInt
	exit
main ENDP
END main
