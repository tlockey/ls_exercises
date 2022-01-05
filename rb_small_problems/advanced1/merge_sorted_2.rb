=begin
try to solve the problem without using sort at all
input: two arrays
output: a single array but sorted, without using sort functions
=end

require 'pry'

def merge(arr1,arr2)
  idx2 = 0
  result = []
  arr1.each do |value|
    while idx2 < arr2.size && (arr2[idx2] <= value)
      result << arr2[idx2]
      idx2 += 1
    end
    result << value
  end
  result += arr2[idx2..-1]
end


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
