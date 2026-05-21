# ---------- Basic Enumerable Methods ----------
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# ---------- each ----------
# The each method is used to iterate over a collection, such as 
# an array or a hash. It takes a block of code and executes it for 
# each element in the collection.
friends.each { |friend| puts "Hello, #{friend}!" }
# => Hello, Sharon!
# => Hello, Leo!
# => Hello, Leila!
# => Hello, Brian!
# => Hello, Arun!
# 
# Within the block, you’ll notice that we have |friend|, which 
# is known as a block variable. This is the element from your 
# array that the block is currently iterating over.
# 
# For multi-line blocks, we can use do...end instead of curly braces:
friends.each do |friend|
    puts "Hello, #{friend}!"
end
# => Hello, Sharon!
# => Hello, Leo!
# => Hello, Leila!
# => Hello, Brian!
# => Hello, Arun!
# 
# For hashes, the each method will yield both the key and value to the block:
ages = { "Sharon" => 30, "Leo" => 25, "Leila" => 28 }
ages.each do |name, age|
    puts "#{name} is #{age} years old."
end
# => Sharon is 30 years old.
# => Leo is 25 years old.
# => Leila is 28 years old.

ages.each { |pair| puts "the pair is #{pair}" }
# => the pair is ["Sharon", 30]
# => the pair is ["Leo", 25]
# => the pair is ["Leila", 28]

# The each_with_index method is similar to each, but it also provides the
# index of the current element in the block.
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }
#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]

# ---------- map ----------
# The map method is used to transform a collection by applying a block 
# of code to each element and returning a new collection with the 
# transformed elements.
friends.map { |friend| friend.upcase }
# => ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]

salaries = [1200, 1500, 1100, 1800]
salaries.map { |salary| salary + 700 }
#=> [1900, 2200, 1800, 2500]

# --------- select and reject ----------
# The select method is used to filter a collection by applying a block
# of code to each element and returning a new collection with the
# elements that evaluate to true.
friends.select { |friend| friend != 'Leo' }
# => ["Sharon", "Leila", "Brian", "Arun"]

# or even
friends.reject { |friend| friend == 'Leo' }
# => ["Sharon", "Leila", "Brian", "Arun"]

# ---------- Reduce ----------
# The reduce method is used to accumulate a single value from a collection
# by applying a block of code to each element and combining it with an
# accumulator.
numbers = [1, 2, 3, 4]
numbers.reduce(0) { |sum, number| sum + number }
# => 10
# In this example, we start with an initial value of 0 for the sum, 
# and then we add each number in the array to the sum as we iterate 
# through it. The final result is the total sum of all the numbers 
# in the array.

# -------- Bang Methods --------
# Note that the map method does not modify the original array, 
# but instead returns a new array with the transformed elements. 
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# If we want to modify the original array, we can use the bang version of the method, which is denoted by an exclamation mark (!):
friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`