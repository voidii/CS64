# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here

#Text Area (i.e. instructions)
.text
main:

	# TODO: Write your code here

exit:
	# Exit
	li $v0, 10
	syscall

