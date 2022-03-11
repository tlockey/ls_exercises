=begin
input: a string of numbers
output: the integer equivalent
'4321' -> ['4', '3', '2', '1']
[4. 3, 2, 1]
[4000, 300, 20, 1]
4321
- break string into digits 
- compare each digit, to a list iteration -> 
- return integer equivalent of each digit
- add all digits together, keeping in mind the place value
  size of string = 4
  - '1' -> 1, add no 0s -> 1 (x1) [3] (length - 1)
  - '2' -> 2, add 1 zero -> 20 (x10) [2] (length - 2)
  - '3' -> 3, add 2 zeros -> 300 (x100) [1] (length - 3)
  - '4' -> 4, add 3 zeros -> 4000 (x 1000) [0] (length - 4)
as the index subtractor counter goes up by +1
       multiplier counter up by x10

Further Exploration:
input: hex string
output: integer value

question: 
- how to change from hex to integer?

- split string into individual characters
- if a number, run through string to integer
- or add the hex numbes 
  
=end

DIGITS = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
          "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

HEX_DIGITS = DIGITS.merge({"A" => 10, "B" => 11, "C" => 12, "D" => 13, "E" => 14,
                       "F" => 15 })

def string_to_integer(str_number)
  digits = str_number.chars.map { |char| DIGITS[char]}
  value = 0
  digits.each{|number| value = 10 * value + number}
  value
end

# def multiplier(digits) # return array [4. 3, 2, 1] -> [4000, 300, 20, 1]
#   length = digits.size # 4
#   counter = 1
#   multiplier = 1
#   multiplied = []
#   loop do
#     multiplied << digits[length - counter] * multiplier
#     counter += 1
#     multiplier *= 10
#     break if counter > length
#   end
#   multiplied
# end

def hexadecimal_to_integer(string)
  digits = string.upcase.chars.map { |char| HEX_DIGITS[char]}
  value = 0
  digits.each{|number| value = 16 * value + number}
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

p hexadecimal_to_integer('4D9f') == 19871
