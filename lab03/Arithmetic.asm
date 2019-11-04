# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	# TODO: Write your code here
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5
	syscall
	move $t2, $v0
	sub $t0, $t0, $t1
	add $t0, $t0, $t0
	li $t4, 3
	mult $t2, $t4
	mflo $t2
	add $t0, $t2, $t0
	move $a0, $t0
	li $v0, 1
	syscall
	j exit
	

exit:
	# Exit
	li $v0, 10
	syscall

