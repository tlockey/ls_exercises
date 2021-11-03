=begin
write a method that takes two arguments, and returns true if exactly one of 
its arguments is truth, false otherwise.
if arg1 is truthy, and arg2 is truthy, return false
if arg1 is truthy and arg2 is falsey, return true
if arg1 is falsey and arg2 is truthy, return true
if arg1 is false and arg2 is falsey, return false
=end

def xor?(arg1, arg2)
  !!((arg1 && !arg2) || arg2 && !arg1)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
