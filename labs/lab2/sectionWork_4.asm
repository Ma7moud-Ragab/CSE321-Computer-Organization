.data

prompt: .asciiz "Enter an integer: "
newLine: .asciiz "\n"
reult: .asciiz "The sum is: "


.text
main:
 move $t0, $zero
do:

    li $v0,4
    la $a0, prompt
    syscall

    li $v0,5
    syscall

    move $t1 , $v0

    addu $t0, $t0 , $t1

while:
    bne $t1, $zero , do

        li $v0,4
        la $a0, reult
        syscall

        li $v0,1
        move $a0 , $t0
        syscall

        li $v0,4
        la $a0, newLine
        syscall
excite:
li $v0,10
syscall