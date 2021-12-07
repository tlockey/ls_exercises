=begin
input: string with one or more separated words
output: hash with number of words of different sizes separated by space

examples:
hey diddle diddle, the cat and the fiddle!
=> 5 words with 3 letters, 1 word with 6 letters, and 2 words with 7
- don't think about punctuation vs letters
- just thinking about spaces separating words

- get string
- convert string into array of words
- get size of each word
  - check if hash has size as key
  - if yes, add one to value
  - if no, add key, set to 1


=end

def word_sizes(string)
  string = string.split
  counts = Hash.new(0)
  string.each do |word|
    counts[word.size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
