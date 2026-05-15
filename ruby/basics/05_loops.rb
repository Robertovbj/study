# -------- Loops --------
# Loop is infinite by default, so we need to specify when to break out of the loop.
i = 0
loop do
  puts i
  i += 1
  break if i >= 5
end

# The while loop will continue to execute as long as the condition is true.
i = 0
while i < 5
  puts i
  i += 1
end

# The until loop will continue to execute as long as the condition is false.
i = 0
until i >= 5
  puts i
  i += 1
end

# The for loop iterates over a range or collection.
for i in 0..4
  puts i
end

# You can also use the each method to iterate over a collection.
(0..4).each do |i|
  puts i
end

# Loop control statements:
# break - exits the loop immediately.
# next - skips the rest of the current iteration and moves to the next iteration.
# redo - restarts the current iteration without re-evaluating the condition.