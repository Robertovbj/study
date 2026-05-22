# ---------- Nested Collections ----------
teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes[0][0]
#=> "Adams"
teacher_mailboxes[1][0]
#=> "Jones"
teacher_mailboxes[2][0]
#=> "Perez"

# If you try to access an index of a nonexistent nested element, 
# it will raise an NoMethodError, because the nil class does not 
# have a [] method. However, just like a regular array, if you try 
# to access a nonexistent index inside of an existing nested element, 
# it will return nil.
teacher_mailboxes[3][0]
#=> NoMethodError
teacher_mailboxes[0][4]
#=> nil

# dig method
# The dig method allows you to safely access nested elements in a collection.
teacher_mailboxes.dig(0, 0)
#=> "Adams"
teacher_mailboxes.dig(1, 0)
#=> "Jones"
teacher_mailboxes.dig(2, 0)
#=> "Perez"
teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil

# ------------ Creating nested collections -----------
# When you create a nested collection using Array.new, 
# be careful when using the same object as the default value 
# for each element. This can lead to unexpected behavior because 
# all elements will reference the same object.
mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]

# To create a truly independent nested array, you can use a 
# block with Array.new
independent = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
independent[0][0] = 1000
#=> 1000
independent
#=> [[1000, nil], [nil, nil], [nil, nil]]

# ----------- Adding and removing elements to nested collections -----------
# You can add elements to nested collections using the << operator 
# or the push method.
teacher_mailboxes[0] << "Edwards"
#=> ["Adams", "Baker", "Clark", "Davis", "Edwards"]
teacher_mailboxes[1].push("Garcia")
#=> ["Jones", "Lewis", "Lopez", "Moore", "Garcia"]
teacher_mailboxes << ["Wilson", "Wright", "Young", "Zhang"]
#=> [["Adams", "Baker", "Clark", "Davis", "Edwards"], ["Jones", "Lewis", "Lopez", "Moore", "Garcia"], ["Perez", "Scott", "Smith", "Young"], ["Wilson", "Wright", "Young", "Zhang"]]

# You can remove elements from nested collections using the pop method or the delete method.
teacher_mailboxes[0].pop
#=> "Edwards"
teacher_mailboxes[1].delete("Garcia")
#=> "Garcia"
teacher_mailboxes.pop
#=> ["Wilson", "Wright", "Young", "Zhang"]

# ----------- Iterating over nested collections -----------
# You can iterate over nested collections using nested loops or the each method.
teacher_mailboxes.each do |mailbox|
    mailbox.each do |name|
        puts name
    end
end
#=> Adams
#=> Baker
#=> Clark
#=> Davis....

# Or use the flatten method to create a single array from the nested 
# collection, and then iterate over it.
teacher_mailboxes.flatten.each do |name|
    puts name
end
#=> Adams
#=> Baker
#=> Clark
#=> Davis....

# ------- Nested hashes -------
vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
}

vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"
vehicles[:zoe][:year]
#=> NoMethodError
vehicles.dig(:zoe, :year)
#=> nil
vehicles[:alice][:color]
#=> nil
vehicles.dig(:alice, :color)
#=> nil

