.globl f # this allows other files to find the function f

# f takes in two arguments:
# a0 is the value we want to evaluate f at
# a1 is the address of the "output" array (read the lab spec for more information).
# The return value should be stored in a0
f:
    # Your code here
    mv t1 a1 # t1 is the pointer to the ouptut array
    addi t0 a0 3 # t0 is the index of the array
    slli t2 t0 2 # multiply the index by the size of the elements of the array
    add t1 t2 t1
    lw a0 0(t1)

    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra
