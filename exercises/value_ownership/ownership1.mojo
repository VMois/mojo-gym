# TASK
# Make file compile with no errors

# I AM NOT DONE

fn set_fire(text: String) -> String:
    text += "🔥"
    return text

# Do not modify below this line
fn main() raises:
    var a: String = "mojo"
    let b = set_fire(a)

    if a != "mojo":
        raise Error("a should not be modified")
    
    if b != "mojo🔥":
        raise Error("b should be on fire")
