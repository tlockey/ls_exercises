=begin
input: a string number that may or may not have a leading + or -
return: positive or negative integer equivalent
- create a flag for leading + or -
  - if leading - multiply the final integer by -1 
  - negative flag
- check if string has + or - and remove it
    sign = str_number[0]
    str_number = str_number[1..-1]
=end
require 'pry'
DIGITS = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
          "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

def string_to_signed_integer(str_number)
  sign = '+'
  sign = str_number.slice!(0) if leading_sign?(str_number[0])
  value = string_to_integer(str_number)
  sign == '-' ? -value : value
end

def leading_sign?(char)
  ['+', '-'].include?(char)
end

def string_to_integer(str_number)
  digits = str_number.chars.map { |char| DIGITS[char]}
  value = 0
  digits.each{|number| value = 10 * value + number}
  value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
