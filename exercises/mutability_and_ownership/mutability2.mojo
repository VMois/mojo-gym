# TASK
# Compile program and make it pass tests

# I AM NOT DONE
from testing import assert_true


fn add_mutate(x: Int, y: Int) -> Int:
    x += 1
    y += 1
    return x + y


# do not change code below this line
fn add(x: Int, y: Int) -> Int:
    return x + y


fn main():
    var x = 1
    var y = 2
    print('x = ', x)
    print('y = ', y)

    let a = add(x, y)
    print('a = ', a)
    _ = assert_true(a == 3, 'a should equal 3')
    _ = assert_true(x == 1, 'x should not be changed')
    _ = assert_true(y == 2, 'y should not be changed')

    let b = add_mutate(x, y)
    print('b = ', b)
    print('x = ', x)
    print('y = ', y)
    _ = assert_true(b == 5, 'b should equal 5')
    _ = assert_true(x == 2, 'x should be changed')
    _ = assert_true(y == 3, 'y should be changed')
    