.data
    firstNumPrompt: .asciiz "Enter the first Number: "
    secondNumPrompt: .asciiz "Enter the second Number: "
    thridNumPrompt: .asciiz "Enter the third Number: "
    fourthNumPrompt: .asciiz "Enter the fourth Number: "
    resultPrompt: .asciiz "The average is: "
    dot: .asciiz "."
    newline: .asciiz "\n"
.text
    main:
        li $v0, 4
        la $a0, firstNumPrompt
        syscall

        li $v0, 5
        syscall

        move $t0, $v0
       #------------------
        li $v0, 4
        la $a0, secondNumPrompt
        syscall

        li $v0, 5
        syscall

        move $t1, $v0
        #-----------------
        li $v0, 4
        la $a0, thridNumPrompt
        syscall

        li $v0, 5
        syscall

        move $t2, $v0
        #-----------------
        li $v0, 4
        la $a0, fourthNumPrompt
        syscall

        li $v0, 5
        syscall

        move $t3, $v0
        #-----------------
        li $v0, 4
        la $a0, resultPrompt
        syscall
          
          li $t5, 4
        add $t4, $t0, $t1
        add $t4, $t4, $t2
        add $t4, $t4, $t3
        div $t4, $t5
        mflo $a0
        li $v0, 1
        syscall
        
        li $v0, 4
        la $a0, dot
        syscall
        li $t0, 100
        mfhi $t4
        mult $t4,$t0
        mflo $t4
        div $t4,$t5
        mflo $a0
        li $v0,1
        syscall
        
        li $v0, 4
        la $a0, newline
        syscall
    exit:
        li $v0, 10  



