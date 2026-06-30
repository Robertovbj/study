def caesar_cipher(text, shift)
  output = ''

  text.each_char do |char|
    output += if char.ord.between?(65, 90) # uppercase letters
                ((char.ord - 65 + shift) % 26 + 65).chr
              elsif char.ord.between?(97, 122) # lowercase letters
                ((char.ord - 97 + shift) % 26 + 97).chr
              else
                char
              end
  end

  output
end
