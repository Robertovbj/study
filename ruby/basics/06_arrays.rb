# -------- Arrays --------
# Creating an array
my_array = [] # creates an empty array
my_array = [1, 2, 3, 4, 5] # creates an array with initial values
my_array = Array.new() # creates an empty array
my_array = Array.new(5) # creates an array of size 5 with nil values
my_array = Array.new(5, 0) # creates an array of size 5 with all values set to 0

# Accessing array elements
# Arrays are zero-indexed
str_array = ["This", "is", "a", "small", "array"]

str_array[0]            #=> "This"
str_array[1]            #=> "is"
str_array[4]            #=> "array"
str_array[-1]           #=> "array"
str_array[-2]           #=> "small"

# Ruby has first and last methods to access the first and last elements of an array.
str_array.first          #=> "This"
str_array.last           #=> "array"
str_array.first(3)       #=> ["This", "is", "a"]

# Modifying array elements
my_array = [1, 2, 3, 4, 5]
my_array[0] = 10         # my_array is now [10, 2, 3, 4, 5]
# Adding elements to an array
my_array << 6            # my_array is now [10, 2, 3, 4, 5, 6]
my_array.push(7)         # my_array is now [10, 2, 3, 4, 5, 6, 7]
my_array.unshift(0)      # my_array is now [0, 10, 2, 3, 4, 5, 6, 7]
my_array.insert(2, 15)   # my_array is now [0, 10, 15, 2, 3, 4, 5, 6, 7]

# Removing elements from an array
my_array.pop             # removes the last element (7), my_array is now [0, 10, 15, 2, 3, 4, 5, 6]
my_array.shift           # removes the first element (0), my_array is now [10, 15, 2, 3, 4, 5, 6]
my_array.delete(15)        # removes the element with value 15, my_array is now [10, 2, 3, 4, 5, 6]
my_array.delete_at(2)      # removes the element at index 2 (3), my_array is now [10, 2, 4, 5, 6]
# pop and shift return the removed element, while delete and delete_at return the removed element or nil if the element was not found.
# Its also possible to give arguments to pop and shift to remove multiple elements at once.
my_array.pop(2)          # removes the last 2 elements (5 and 6), my_array is now [10, 2, 4]
my_array.shift(2)        # removes the first 2 elements (10 and 2), my_array is now [4]

# Concatenating arrays
array1 = [1, 2, 3]
array2 = [4, 5, 6]
combined_array = array1 + array2 # combined_array is now [1, 2, 3, 4, 5, 6]
array1.concat(array2)    # array1 is now [1, 2, 3, 4, 5, 6], array2 remains unchanged

# Subtracting arrays
array1 = [1, 2, 3, 4, 5]
array2 = [4, 5, 6]
difference_array = array1 - array2 # difference_array is now [1, 2, 3]
array1 -= array2          # array1 is now [1, 2, 3], array2 remains unchanged

# Utility methods
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"
