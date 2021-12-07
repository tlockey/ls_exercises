=begin
input: integer
output: if double number -> return as is
        if not, return doubled number
=end
def twice(integer)
  if double_number?(integer)
    integer
  else
  integer * 2
  end
end

def double_number?(integer)
  digits = integer.digits
  no_of_digits = digits.size
  if no_of_digits.odd?
    false
  elsif digits.first(no_of_digits/2) == digits.last(no_of_digits/2)
    true
  else
    false
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
