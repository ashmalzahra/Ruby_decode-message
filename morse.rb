def decode_char(character)
  morse_dictionary = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
    '..-.' => 'F', '.' => 'E', '-..' => 'D',
    '--.' => 'G', '....' => 'H', '..' => 'I',
    '.-..' => 'L', '-.-' => 'K', '.---' => 'J',
    '--' => 'M', '-.' => 'N', '---' => 'O',
    '.-.' => 'R', '--.-' => 'Q', '.--.' => 'P',
    '...' => 'S', '-' => 'T', '..-' => 'U',
    '-..-' => 'X', '.--' => 'W', '...-' => 'V',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse_dictionary[character] || ' '
end

def decode_word(morse_word)
  word = ''
  morse_word.split.each do |char|
    word += decode_char(char)
  end
  word
end

def decode(morse_message)
  morse_message.split('   ').map { |word| decode_word(word) }.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
