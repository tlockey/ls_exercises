=begin
input: positive number, negative number, or 0
output: string representation of positive, negative or 0 number
if not 0, check: 

=end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(integer)
  return '0' if integer == 0
  string = '+'
  if integer < 0 
    string = '-'
    integer *= -1
  end
  string << integer_to_string(integer)
end

def integer_to_string(integer)
  digits = number_to_array(integer)
  return '0' if digits == []
  digits.map!{ |digit| DIGITS[digit]}
  digits.join
end

def number_to_array(number)
  array = []
  loop do
    break if number == 0
    number, remainder = number.divmod(10)
    array << remainder
  end
  array.reverse
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
