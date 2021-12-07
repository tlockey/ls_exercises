=begin
input: string with one or more words
output: a new string with all values of original string except consecutive 
        duplicates have been collapsed
rules:
cannot use String#squeeze or String#squeeze!

algorithm:
- get string
- save first letter to a collapsed string
- iterate over each character
- if letter is NOT the same as saved letter, add to string and
- set it to the new saved letter
- return collapsed string

=end

def crunch(string)
  return '' if string == ''
  saved_letter = string[0]
  crunched_string = string[0] 
  string.chars.each do |letter|
    if letter != saved_letter
      crunched_string << letter 
      saved_letter = letter
    end
  end
  crunched_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
