=begin
input: array
output: arrays of words that are anagrams

- take first word
- iterate over each word, checking if all letters in each word are
  included in reference word
- if yes, remove from array, add to first word array,
- 
=end

require 'pry'

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

grouped = []
loop do
  target = words[0].chars.sort.join
  anagrams = words.select{|word| word.chars.sort.join == target }
  words.reject!{|word| anagrams.include?(word)}
  grouped << anagrams
  break if words == []
end
grouped.each {|list| p list}
