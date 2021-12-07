=begin
input: String
output: integer (sum of ASCII Value of each character)
- divide the string into individual characters
- figure out the ascii value of each character 
- add these values together
- output value
----
- divide string into individual characters 
- iterate over each character, calling #ord and adding return value to a sum
- return sum
=end

def ascii_value(string)
  return 0 if string == ""
  string.chars.map { |char| char.ord }.inject("+")
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
