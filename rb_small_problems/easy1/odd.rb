=begin
input: one integer, either positive, negative, or zero
output: true if integer is odd, false if not
=end

def is_odd?(integer)
integer % 2 == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
