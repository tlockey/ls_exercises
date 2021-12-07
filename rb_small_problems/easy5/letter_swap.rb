=begin
input: string of words separated by spaces
output: a string where first and last letters of every word are swapped

- break string down
- iterate over each word
-   take first and last char
-   put first char at the end
- put last char at the beginning
- if string.split.size = 1, return string
=end

# brute force:
def swap(long_string)
  return long_string if long_string.size == 1
  words = long_string.split
  words.map! do |word|
    letters = word.chars
    last = letters.pop
    letters << letters.shift
    letters.unshift(last)
    letters.join
  end
  words.join(" ")
end

# idiomatic:
def swap(long_string)
  result = long_string.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
