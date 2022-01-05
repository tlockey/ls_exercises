=begin
input: sentence string
output: same string with any sequence of numbers converted to string of digits
        - also separated by a space
questions:
- should i take into consideration upper and lower case or will everything
  be in lowercase?
- does it have to be the same object or just an identical value with the 
  numbers changed?
Algorithm:
- break up sentence
- check if any of the words are numbers
- if they are switch word with number
- return sentence

clean word:
- check if word is all alpha characters
- if not, split word into alpha characters and punctuation
- save punctuation to add back to word later. 
=end

WORD_TO_NUMBERS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
                'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
                'eight' => '8', 'nine' => '9'}

ALPHA = ('A'..'Z').to_a + ('a'..'z').to_a

def word_to_digit(string)
  string.split.map do |word|
    word, punctuation = word.chars.partition {|char| ALPHA.include?(char)}
    word = word. join
    punctuation = punctuation.join
    if WORD_TO_NUMBERS.keys.include?(word)
      WORD_TO_NUMBERS[word] + punctuation
    else
      word + punctuation
    end
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 
              'Please call me at 5 5 5 1 2 3 4. Thanks.'
