# ------- Output -------
puts "Hello World" #=> Hello World
                   # => nil (puts returns nil, with a newline after the output)
print "Hello World" #=> Hello World => nil (print also returns nil)
p "Hello World" #=> "Hello World" => "Hello World" (p returns the value it prints)

# ------- Input -------
# To get user input, you can use the gets method. It reads a line of input
gets #=> "User input\n" (the input includes a newline character at the end)
# To remove the newline character, you can use the chomp method:
gets.chomp #=> "User input" (the newline character is removed)
# You can also assign the input to a variable:
name = gets.chomp #=> "Alice" (the user's input is stored in the variable 'name')