
# ------- Numbers -------
# Addition
1 + 1 #=> 2

# Subtraction
2 - 1 #=> 1

# Multiplication
2 * 2 #=> 4

# Division
10 / 5 #=> 2

# Exponent
2 ** 2 #=> 4
3 ** 4 #=> 81

# Modulus (find the remainder of division)
8 % 2 #=> 0  (8 / 2 = 4; no remainder)
10 % 4 #=> 2  (10 / 4 = 2 with a remainder of 2)

# Integer will never return a float, even if the result is a decimal.
17 / 5 #=> 3, not 3.4

# To get a float result, at least one of the numbers must be a float.
17.0 / 5 #=> 3.4
17 / 5.0 #=> 3.4

# To convert an integer to a float:
13.to_f #=> 13.0

# To convert a float to an integer:
13.0.to_i #=> 13
13.9.to_i #=> 13

# There are also methods to check if a number is even or odd:
7.even? #=> true
7.odd?  #=> false

# ------- Strings -------
# Concatenating strings can be done in several ways:
# # With the plus operator:
"Welcome " + "to " + "Odin!" #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!" #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!") #=> "Welcome to Odin!"

# With string interpolation:
name = "Odin"
"Welcome to #{name}!" #=> "Welcome to Odin!"

# Substrings
"hello"[0] #=> "h"

"hello"[0..1] #=> "he"

"hello"[0, 4] #=> "hell"

"hello"[-1] #=> "o"

# Some common string methods:
"hello".upcase #=> "HELLO"
"HELLO".downcase #=> "hello"
"hello".capitalize #=> "Hello"
"hello world".split #=> ["hello", "world"]
"hello world".split("") #=> ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
"hello world".include?("world") #=> true
"hello".empty? #=> false
"".empty? #=> true
"hello".length #=> 5
"hello world     ".strip #=> "hello world"

# Converting to string: 
123.to_s #=> "123"
true.to_s #=> "true"
false.to_s #=> "false"

# ------- Symbols -------
:my_symbol #=> :my_symbol

# Symbols are immutable and unique. They are often used as identifiers or keys in hashes.
:my_symbol.object_id #=> 12345678 (example, will be the same for every occurrence of :my_symbol)
:my_symbol.object_id #=> 12345678 (same as above)

# Converting to symbol:
"my_string".to_sym #=> :my_string

# ------- Booleans -------
true #=> true
false #=> false
nil #=> nil (represents "nothing" or "no value")