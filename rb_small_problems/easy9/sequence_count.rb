=begin
input: 2 integers: count, first number of a sequence
output: array of size == count, values multiples of starting number
rules:
- count number always 0 or more
- if count == 0, return []
=end
def sequence(size, starting)
  array = []
  next_number = 0
  size.times do 
    next_number += starting
    array << next_number
  end
  array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
