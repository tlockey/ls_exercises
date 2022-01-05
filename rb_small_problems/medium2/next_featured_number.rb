=begin
input: a single integer
output: the next featured number greater than the argument
        if none, error message

definition of featured number:
- odd number
- multiple of 7
- each digits appear exactly once each

- find the next number after arg that is multiple of seven
- check if this number is odd
- if not, check next number
- if odd, check if all digits are unique
- if not, check the next number
- break if the number is odd, and greater than the argument, and
  all digits are original

- if the argument is >= 9_999_999_999, return error

=end

def featured(number)
  return "no possible number" if number >= 9_999_999_999
  number = next_seven(number)
  loop do
    if number.odd?
      return number if number.digits.reverse.uniq.join.to_i == number
    end
    number += 7
  end
end

def next_seven(number)
  (number / 7) * 7 + 7
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
