.data
    firstNumPrompt: .asciiz "Enter the first Number: "
    secondNumPrompt: .asciiz "Enter the second Number: "
    resultPrompt: .asciiz "The result is: "
    newline: .asciiz "\n"
.text
    main:
        li $v0, 4
        la $a0, firstNumPrompt
        syscall

        li $v0, 5
        syscall
        move $t0, $v0


        li $v0, 4
        la $a0, secondNumPrompt
        syscall

        li $v0, 5
        syscall

        move $t1, $v0

        li $v0, 4
        la $a0, resultPrompt
        syscall

        add $a0, $t1, $t0

         li $v0, 1
        
        syscall
        
        li $v0, 4
        la $a0, newline
        syscall

    exit:
        li $v0, 10
        syscall