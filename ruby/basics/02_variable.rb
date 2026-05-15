# ------ Variable ------
# In ruby, you can assign a value to a variable using the assignment operator (=).
age = 10 #=> 10
age = 10 + 4 #=> 14

age += 1 #=> 15 (same as age = age + 1)
age -= 1 #=> 14 (same as age = age - 1)
age *= 2 #=> 28 (same as age = age * 2)
age /= 2 #=> 14 (same as age = age / 2)
age **= 2 #=> 196 (same as age = age ** 2)
age %= 5 #=> 1 (same as age = age % 5)

# References and memory
# When you assign a value to a variable, the variable holds a reference to that value in
# memory. If you assign the variable to another variable, both variables will reference the same value.
a = "Test"
b = a # b now references the same string as a
a.upcase! # This modifies the string that a references in place
puts a #=> "TEST" (a is now uppercase)
puts b #=> "TEST" (b also shows uppercase because both reference the same object)