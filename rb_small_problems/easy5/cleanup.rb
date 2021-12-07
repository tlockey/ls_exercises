=begin
input: a string with non-alphatic characters
output: a string with only alphabetic characters and spaces
rules:
- a lowercase
- if one or more non-alpha characters appear in a row, only one space

'---what's my +*& line?' 
['---what's', 'my','+*&','line?']
'---what's'
["-", "-", "-", "w", "h", "a", "t", "'", "s"]
[" ", "w", "h", "a", "t", " ", "s"]
" what s"
' what s my line '

- break it down into words divided by space
- iterate over each word
For each word: 
  - iterate over each letter
  - if not alphabetic
      - delete
      - add a space if the next character is a letter
  - otherwise, fine
  - join letters
- Join Words by " "

=end
require 'pry'
ALPHA = ('A'..'z').to_a

def cleanup(dirty_words)
  clean_words = []
  dirty_words.split.map do |dirty_word|
    clean_word = ''
    dirty_word.chars.each_with_index do |char, idx|
      if !(ALPHA.include?(char))
        if ALPHA.include?(dirty_word.chars[idx + 1]) || dirty_words[-1] == char
          clean_word << " " 
        end
      else
        clean_word << char
      end
    end
    clean_words << clean_word unless clean_word == ''
  end
  clean_words.join(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
