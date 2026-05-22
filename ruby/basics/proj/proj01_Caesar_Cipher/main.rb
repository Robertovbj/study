def caesar_cipher (text, shift)
  output = ""

  text.each_char do |char|

    if char.ord.between?(65, 90) # uppercase letters
      output += ((char.ord - 65 + shift) % 26 + 65).chr
    elsif char.ord.between?(97, 122) # lowercase letters
      output += ((char.ord - 97 + shift) % 26 + 97).chr
    else
      output += char
    end

  end

  output
end