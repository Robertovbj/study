# --------- Hashes ---------
# Same as dictionaries in Python
# Hashes are a collection of key-value pairs
# They use braces and hash rockets (=>) to separate keys and values
hash = {} # creates an empty hash
hash = Hash.new() # creates an empty hash

my_hash = {
  "name" => "Alice",
  "age" => 30,
  "city" => "New York"
}

# You can also use symbols as keys, which are more efficient than strings
my_hash = {
  name: "Alice",
  age: 30,
  city: "New York"
}

# Anything can be a key or a value in a hash, including arrays and other hashes
my_hash = {
  "name" => "Alice",
  9 => "nine",
  :city => "New York",
  "hobbies" => ["reading", "traveling"],
  "address" => {
    "street" => "123 Main St",
    "city" => "New York",
    "state" => "NY"
  }
}

# Accessing values in a hash is done using the keys
my_hash["name"] #=> "Alice"
my_hash[9] #=> "nine"
my_hash[:city] #=> "New York"
my_hash["hobbies"] #=> ["reading", "traveling"]
my_hash["address"] #=> {"street"=>"123 Main St", "city"=>"New York", "state"=>"NY"}
my_hash["empty"] #=> nil (returns nil for non-existent keys)

# Fetch method can be used to access values with a default value if the key does not exist
my_hash.fetch("name", "Unknown") #=> "Alice"
my_hash.fetch("empty", "Unknown") #=> "Unknown"
# It can also be used to raise an error if the key does not exist
my_hash.fetch("empty") #=> raises KeyError

# Adding or modifying key-value pairs in a hash is done by assigning a value to a key
my_hash["name"] = "Bob" # Modified
my_hash[:country] = "USA" # Added

# Removing key-value pairs from a hash can be done using the delete method
my_hash.delete("age") # Removes the key "age" and its value, returns 30
my_hash.delete("non_existent") # Returns nil if the key does not exist

# Some common hash methods:
my_hash.keys #=> [:name, :city, "hobbies", "address", :country]
my_hash.values #=> ["Bob", "New York", ["reading", "traveling"], {"street"=>"123 Main St", "city"=>"New York", "state"=>"NY"}, "USA"]
my_hash.length #=> 5
my_hash.empty? #=> false

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

# Symbols are often used as keys in hashes because they are more memory efficient than strings. When you use a symbol as a key, it is only stored once in memory, even if it is used multiple times in the hash. In contrast, each time you use a string as a key, a new string object is created in memory. This can lead to increased memory usage if you have many keys that are the same string.
# Rocket syntax
my_hash = {
  :name => "Alice",
  :age => 30,
  :city => "New York"
}

# Symbol syntax (introduced in Ruby 1.9)
my_hash = {
  name: "Alice",
  age: 30,
  city: "New York"
}

# To access values in a hash using symbols as keys
my_hash[:name] #=> "Alice"