=begin
input: 2 arrays
output: a new array with the product of each pair of numbers with the same index

=end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map{ |arr| arr.inject(:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
