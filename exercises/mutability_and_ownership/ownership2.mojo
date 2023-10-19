# TASK
# Make this file compile

# I AM NOT DONE

# Do not change this function
fn take_value(owned x: Int):
    x += 2
    use_value(x)


# Do not change this function
fn use_value(x: Int):
    print('value is', x)


fn main():
    var counter = 0
    counter += 1
    print('counter is', counter)

    # the line below should not be changed
    var new_counter = counter^

    print('new_counter is ', new_counter)

    counter += 1

    new_counter += 1
    print('new_counter is', new_counter)
