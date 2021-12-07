=begin
input: a string
output: a new string with every character doubled
=end
def repeater(string)
  string.chars.map{|char| char * 2}.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
