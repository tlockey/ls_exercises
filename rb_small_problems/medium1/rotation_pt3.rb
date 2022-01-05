=begin
input: an integer
output: the maximum rotation of the integer
=end

def max_rotation(int)
  count = int.digits.size
  loop do
    int = rotate_rightmost_digits(int, count)
    break if count <= 1
    count -= 1
  end
  int
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(int, n)
  all_digits = int.digits.reverse
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
