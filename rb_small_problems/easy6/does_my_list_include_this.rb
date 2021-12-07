=begin
input: array, search value
output: boolean
=end

def include?(array, target)
  array.each {|item| return true if item == target}
  false
end

# or

def include?(array, target)
  !!array.find_index(target)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
