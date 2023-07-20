class MORSE
  @codes = {
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

  def self.codes_set
    @codes
  end

  def decode_char(char)
    @codes[char]
  end

  def decode_word(word)
    word.split.map { |char| decode_char(char) }.join
  end

  def self.decode(message)
    message.split('   ').map { |word| new.decode_word(word) }.join
  end
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

decoded_message = MORSE.decode(message)
puts decoded_message
