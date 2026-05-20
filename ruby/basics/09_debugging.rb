# -------- Debugging --------
# p is a combination of puts and inspect
p "Hello, World!" #=> "Hello, World!"

# Debugging with puts and nil
# Using puts is a great way to debug, but there’s a HUGE 
# caveat with using it: calling puts on anything that is 
# nil or an empty string or collection will just print a blank 
# line to your terminal.
# 
# This is one instance where using p will yield more information. 
# As mentioned above, p is a combination of puts and the #inspect method, 
# the latter of which essentially prints a string representation 
# of whatever it’s called on

puts nil #=> (prints a blank line)
p nil #=> nil

# ----- Debugging with Pry -----
# Pry is a powerful debugging tool that allows you to pause your code and 
# interact with it in the terminal. 
# To use Pry, you need to install the pry gem and require it in your code.
# You can then use the binding.pry method to pause your code at a specific 
# point and interact with it in the terminal.
# 
require 'pry-byebug'

def isogram?(string)
    original_length = string.length
    string_array = string.downcase.split

    binding.pry

    unique_length = string_array.uniq.length
    original_length == unique_length
end

isogram?("Odin")
