# --------- Truthy and Falsy values --------

# In Ruby, everything is considered "truthy" except for `false` and `nil`, which are "falsy".
# This means that in conditional statements, any value other than `false` or `nil` will be treated as true.
# 0 and empty strings are also considered truthy in Ruby, unlike in some other programming languages.

# -------- Conditional statements --------
if true
  puts "This will always be printed."
end

if 0
  puts "This will also be printed because 0 is truthy."
end

if 1 > 0
  puts "This will be printed because the condition is true."
end

# inline if statement
puts "This will be printed because the condition is true." if true

if 1 > 2
  puts "This will not be printed because the condition is false."
else
  puts "This will be printed because the condition is false."
end

n = 1

if n > 0
  puts "n is positive."
elsif n < 0
  puts "n is negative."
else
  puts "n is zero."
end

# ------- Operators in conditionals -------
# You can use various operators in conditional statements, such as:
# Comparison operators: ==, !=, >, <, >=, <=
# Logical operators: && (and), || (or), ! (not)
# #eql? and #equal? for checking object equality and identity, respectively.
# Spaceship operator (<=>) for combined comparison (returns -1, 0, or 1). 
# Example: 5 <=> 3 #=> 1 (5 is greater than 3), 5 <=> 5 #=> 0 (5 is equal to 5), 3 <=> 5 #=> -1 (3 is less than 5)

# Example:
a = 5
b = 10

if a < b && a > 0
  puts "a is less than b and greater than 0."
end

if a == 5 || b == 5
  puts "Either a or b is equal to 5."
end

if !a.nil?
  puts "a is not nil."
end

# Checking value equality with #eql?
if a.eql?(5.0)
  puts "a is equal to 5.0 in value."
else
  puts "a is not equal to 5.0 in value."
end

# Checking object identity with #equal?
if a.equal?(b)
  puts "a is the same object as b."
else
  puts "a is not the same object as b."
end

# ------- Case statements -------
# Case statements are a more concise way to write multiple conditional branches.
grade = 'B'
case grade
when 'A'
  puts "Excellent!"
when 'B'
  puts "Good job!"
when 'C'
  puts "You can do better."
else
  puts "Invalid grade."
end

# ------- unless statements -------
# The `unless` statement is the opposite of `if`. It executes the code block only if the condition is false.
age = 19
unless age < 18
  puts "You are an adult."
end

# ------- Ternary operator -------
# The ternary operator is a compact way to write simple conditional expressions.
age = 20
message = age >= 18 ? "You are an adult." : "You are a minor."

