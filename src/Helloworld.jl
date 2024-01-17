# Helloworld.jl
"""
# Helloworld Module

The `Helloworld` module demonstrates a simple Julia program that prints 'Hello, World!'.

## Module Functions

- `hello()`: Prints 'Hello, World!' to the standard output.

"""
module Helloworld

export hello

"""
    hello()

Print 'Hello, World!' to the standard output.
"""
function hello()
    println("Hello, World!")
end

end
