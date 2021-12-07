=begin
input: two none-empty arrays with the same number of elements
output: one array with elements from each array interleaved

=end

# def interleave(arr1,arr2)
#   new_array = []
#   arr1.size.times do
#     new_array << arr1.shift
#     new_array << arr2.shift
#   end
#   new_array
# end

def interleave(arr1,arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
