# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	out_string:    .asciiz   "\nHello, World!\n"
	ques:  		.asciiz  "Choose an integer number between 0 and 1000:\n"
	User_chose: 	.asciiz  "User chose "
	truly		.ssciiz  ". Truly a wise choice." 
	

#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here
	li $v0, 4
	la $a0, ques
	syscall
	li $v0, 4
	syscall
	li $a0, $v0
	li $v0, 1
	syscall
	move $t0, $a0
	li $v0, 4
	la $a0, out_string
	syscall
	la $a0, User_chose
	syscall
	li $v0, 1
	li $a0, $t0
	syscall
	la $a0, truly
	li $v0, 4
	syscall
	j exit
	
	
	
	

exit:
	# Exit
	li $v0, 10
	syscall

