# ---------- Predicate Enumerable Methods ----------
# include?
numbers = [1, 2, 3, 4, 5]
numbers.include?(3)
# => true
numbers.include?(6)
# => false

# any? and all?
# The any? method returns true if at least one element in the collection
# satisfies the condition specified in the block, while the all? method
# returns true if all elements satisfy the condition.
ages = [30, 25, 28, 35]
ages.any? { |age| age > 30 }
# => true
ages.all? { |age| age > 20 }
# => true
ages.all? { |age| age > 30 }
# => false

# The none? method returns true if no elements in the collection satisfy
# the condition specified in the block.
ages.none? { |age| age < 20 }
# => true
ages.none? { |age| age > 30 }
# => false

# The one? method returns true if exactly one element in the collection
# satisfies the condition specified in the block.
ages.one? { |age| age > 30 }
# => true
ages.one? { |age| age > 25 }
# => false