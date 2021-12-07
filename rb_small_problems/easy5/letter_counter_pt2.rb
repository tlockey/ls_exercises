=begin
input: string
output: counts of words with different sizes, excluding special characters

=end
ALPHA = ('A'..'z').to_a

def word_sizes(string)
  string = string.split
  counts = Hash.new(0)
  string.each do |word|
    counts[word.delete('^A-Za-z').size] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
