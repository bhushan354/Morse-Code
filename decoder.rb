def character_decode(string)
  case string
  when ".-"
   puts "A"
  when "-..."
   puts "B"
  when "-.-."
   puts "C"
  when "-.."
   puts "D"
  when "."
   puts "E"
  when "..-."
   puts "F"
  when "--."
   puts "G"
  when "...."
   puts "H"
  when ".."
   puts "I"
  when ".---"
   puts "J"
  when "-.-"
   puts "K"
  when ".-.."
   puts "L"
  when "--"
   puts "M"
  when "-."
   puts "N"
  when "---"
   puts "O"
  when ".--."
   puts "P"
  when "--.-"
   puts "Q"
  when ".-."
   puts "R"
  when "..."
   puts "S"
  when "-"
   puts "T"
  when "..-"
   puts "U"
  when "...-"
   puts "V"
  when ".--"
   puts "W"
  when "-..-"
   puts "X"
  when "-.--"
   puts "Y"
  when "--.."
   puts "Z"
  else
   puts " "
  end
end

def string_decode(word)
  decoded_chars = word.split(' ').map(|char| character_decode(char))
  decoded_chars.join
end

def sentence_decode(message)
  decoded_words = message.split('   ').map{|word| string_decode(word)}
  decoded_words.join(' ')
end

# result = sentence_decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# puts result
