=begin
input: a text file
output: longest sentence in file based on number of words
        print number of words in longest sentences

rules:
word -> any sequence of characters that are not spaces or . ! ?
      - sequence of characters separated by spaces, which are not . ! ?
      - hello.there? -> two sentences of one word each
      '--' in example counts as word because its separated by spaces and 
      is not !.?

sentences: sequence of word or words separated by . ? or !
how to get a program to read a text file?

- open text file
- break up into sentences
- for each sentence, break up into words, 
- count each word
- check if larger than previously stored word count
- if it is, store word count and sentence

=end

sentences = File.read("longest_sentence_file.txt").split(/\.|\?|!/)

longest_sentence = sentences.max_by { |sentence| sentence.split.size }.strip
number_of_words = longest_sentence.split.size

puts "#{longest_sentence}"
puts "This sentence has #{number_of_words} words."

