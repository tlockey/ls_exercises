=begin
input: string
output: same string but reversed
1. take the string, and turn it into an array, elements delimited by " "
2. create a new empty array
3. iterate over the str_array, removing the last item and putting it into the 
   empty array
4. stop when array is empty
5. turn new array into string

=end
    
def reverse_sentence(string)
  string.split.reverse.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
