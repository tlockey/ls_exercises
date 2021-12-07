=begin
input: an integer >= 0
output: string equivalent
4321
[4, 3, 2, 1]
['4', '3', '2', '1']
'4321'

- deconstruct number into individual digits
  - 4321 % 10 -> store return value in array
  - 4321 / 10 -> return value is new value
  - break when value / 10 == 0 
  what if we start with zero? -> empty array -> if empty array digit = '0'
- convert digits to str equivalent -> hash
- return full string


=end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

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

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
