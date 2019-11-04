# MedianNumbers.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

.data

	# TODO: Complete these declarations / initializations

 ent: 	.asciiz "Enter the next number:\n"

 med:   .asciiz "Median: "


#Text Area (i.e. instructions)
.text

main:

	# TODO: Write your code here
	li $v0, 4
	la $a0, ent
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0 #first number in t0
	
	li $v0, 4
	la $a0, ent
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0 #second number in t1
	
	li $v0, 4
	la $a0, ent
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0 #third number in t2
	
	li $v0, 4
	la $a0, med
	syscall
	
	blt $t0, $t1, case1 # when 0 < 1
	# when 0 > 1
	j case2

case1:
	blt $t1, $t2, case1_end1
	blt $t0, $t2, case1_end2
	
	li $v0, 1
	move $a0, $t0
	syscall #2 0 1 
	j exit

case1_end1:
	
	li $v0, 1
	move $a0, $t1
	syscall #0 1 2
	j exit
	
case1_end2:

	li $v0, 1
	move $a0, $t2
	syscall #0 2 1
	j exit
	
case2:
	blt $t0, $t2, case2_end2 #1 0 2
	blt $t1, $t2, case2_end1 #1 2 0
	#2 1 0
	li $v0, 1
	move $a0, $t1
	syscall 
	j exit
	
case2_end1:
	li $v0, 1
	move $a0, $t2
	syscall 
	j exit
	
case2_end2:
	li $v0, 1
	move $a0, $t0
	syscall 
	j exit

exit:
	# Exit
	li $v0, 10
	syscall
