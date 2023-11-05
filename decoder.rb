# Define a lookup table for Morse code to English letters
MORSE_TO_ENGLISH = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def character_decode(string)
  MORSE_TO_ENGLISH[string] || ' '
end

def string_decode(word)
  decoded_chars = word.split.map { |char| character_decode(char) }
  decoded_chars.join
end

def sentence_decode(message)
  decoded_words = message.split('   ').map { |word| string_decode(word) }
  decoded_words.join(' ')
end
