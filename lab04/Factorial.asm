# Factorial.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

# Assembly version of:
#   int n, fn=1;
#   cout << "Enter the number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++) {
#       fn = fn * x;
#   }
#   cout << "Factorial is:" << fn << "\n";
#
.data

	# TODO: Write your initializations here
	ent: .asciiz "Enter the number:\n"
	fac: .asciiz "Factorial is:"
	n : .asciiz "\n"

#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here
	li $v0, 4
	la $a0, ent
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 2
	li $t2, 1
	
	add $t3, $t0, $zero
	li $v0, 4
	la $a0, fac
	syscall
	blt $t3, $t2, print0
	
	j facl

facl:
	blt $t3, $t1, print
	sub $t3, $t3, $t2 
	mult $t0, $t3
	mflo $t0
	j facl
	
print:
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, n
	syscall
	j exit
	
print0:
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 4
	la $a0, n
	syscall
	j exit

exit:
	# Exit
	li $v0, 10
	syscall