# TASK
# Run this file and see what happens

# I AM NOT DONE


# Both of these functions are equivalent
fn add(x: Int, y: Int) -> Int:
    return x + y

fn add_borrowed(borrowed x: Int, borrowed y: Int) -> Int:
    return x + y

fn main():
    let x = 1
    let y = 2
    let a = add(x, y)
    let b = add_borrowed(x, y)
    print('a = ', a)
    print('b = ', a)
