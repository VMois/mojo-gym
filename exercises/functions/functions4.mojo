# TASK
# Make assert statement pass

# I AM NOT DONE

from testing import assert_true


# only change definition of the function
fn pow(base: Int, exp: Int) -> Int:
    return base ** exp

# do not change below this line
fn main() raises:
    let c = pow(3)
    
    if c != 9:
        raise Error('z should equal 9')
