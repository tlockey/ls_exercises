=begin
input: a string containing one or more words
output: another string, with the words that are five letters or longer,
        reversed
1. get string
2. split string into array
3. create an empty array
3. iterate over array, 
4. if element.size >= 5, then 
    split word into chars, reverse, then join
    then push to empty array
   else 
    push to empty array
5. Join array 

=end

def reverse_words(words)
  words = words.split
  reversed = []
  words.each do |word|
    if word.size >= 5
      reversed << word.chars.reverse.join
    else
      reversed << word
    end
  end
  reversed.join(' ')
end


  puts reverse_words('Professional')          # => lanoisseforP
  puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
  puts reverse_words('Launch School')         # => hcnuaL loohcS
