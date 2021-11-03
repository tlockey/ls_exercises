=begin
input: word or multiple words separated by spaces
output: number of characters
=end

print "Please write word or multiple words: "
words = gets.chomp

number_of_characters = words.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{words}\"."

