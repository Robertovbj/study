# ------- Methods -------
# Since ruby is an object-oriented programming language, 
# all methods are associated with objects. 
# (Everything in Ruby is an object, including numbers, 
# strings, and even classes themselves.)

# They can be used by calling the method on an object, using the dot notation.
"Hello".upcase #=> "HELLO"

# Methods can also take arguments
puts "Hello"

# Puts is a method that prints the given argument;
# You can also use parentheses to call methods, but they are optional in most cases.
puts("Hello")

# ---- Defining Methods ----
def my_name
  "Alice"
end

puts my_name #=> "Alice"

# ----- Parameters -----
def greet(name)
  "Hello, #{name}!"
end

puts greet("Alice") #=> "Hello, Alice!"

# Default parameters
def greet(name = "World")
  "Hello, #{name}!"
end

puts greet #=> "Hello, World!"
puts greet("Alice") #=> "Hello, Alice!"

# Return values
# In Ruby, methods return the value of the last expression evaluated.
# You can also use the `return` keyword to explicitly return a value.
def add(a, b)
  a + b
end

puts add(2, 3) #=> 5

# Implicit return
# Note that the last expression is returned, even 
# if its not the last line of the method
def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.

# Explicit return
def my_name
  return "Joe Smith"
  "Jane Doe"
end

puts my_name #=> "Joe Smith"


def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.

# ---- Methods names ----
# Method names should be descriptive and follow the snake_case convention (lowercase letters and underscores).
# No symbols other than _, ?, !, and =
# You cannot use ?, !, or = anywhere other than at the end of the name
# Cannot start with a number or a capital letter

# Predicate methods
# Methods that return a boolean value (true or false) are often called 
# predicate methods and should end with a question mark.
# 
# You can also create your own method with a ? at the end of its name 
# to indicate that it returns a Boolean. Ruby doesn’t enforce this 
# naming convention, but you will thank yourself later for following 
# this guideline.
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

# Bang methods
# Methods that modify the object they are called on are often called
# bang methods and should end with an exclamation mark.
# You can also create your own method with a ! at the end of its name 
# to indicate that it modifies the object it is called on. Again, Ruby doesn’t 
# enforce this naming convention, but it’s a good practice to follow it.
my_string = "hello"
puts my_string.upcase #=> "HELLO"
puts my_string #=> "hello" (original string is unchanged)

puts my_string.upcase! #=> "HELLO"
puts my_string #=> "HELLO" (original string is modified)