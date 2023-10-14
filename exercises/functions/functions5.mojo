# TASK
# Make assert statement pass

# I AM NOT DONE

from testing import assert_true


# only change definition of the function
fn add(x: Int = 2, y: Int) -> Int:
    return x + y

# do not change below this line
fn main():
    let c = add()
    _ = assert_true(c == 5, 'c should equal 5')
