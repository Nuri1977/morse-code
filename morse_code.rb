MORSE = {
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
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

def decode_char(char)
  (MORSE[char])
end

p decode_char('.-')

def decode_word(word)
  word_arr = []
  word.split.each do |char|
    word_arr.push(decode_char(char))
  end
  word_arr.join
end

p decode_word('-- -.--')

def decode(input)
  arr = []
  input.split('   ').each do |word|
    arr.push(decode_word(word))
  end
  arr.join(' ')
end

p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
