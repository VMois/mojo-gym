# TASK
# Make assert statement pass

# I AM NOT DONE

from testing import assert_true


# only change definition of the function
fn pow(base: Int, exp: Int) -> Int:
    return base ** exp

# do not change below this line
fn main():
    let c = pow(3)
    _ = assert_true(c == 9, 'z should equal 9')
