# TASK
# Make file compile with no errors

# I AM NOT DONE

fn take_ptr(owned array: Pointer[Int]):
    array.store(2, 23)


fn main():
    # this line just allocates pointer for 3 integers
    # think about it as array with capacity of 3 integers
    var array = Pointer[Int].alloc(3)

    array.store(0, 1)
    array.store(1, 2)

    # this function call does not need any changes
    take_ptr(array^)

    array.store(1, 2)
