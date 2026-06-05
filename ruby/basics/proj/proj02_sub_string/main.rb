def substrings(word, substrings)
    words = word.split
    substring_count = substrings.map{ |item| [item,0] }.to_h

    substring_count.each do |key, value|
        words.each do |i|
            if i.downcase.include?(key.downcase)
                substring_count[key] += 1
            end
        end
    end

    substring_count.reject{ |key, value| value == 0 }
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

