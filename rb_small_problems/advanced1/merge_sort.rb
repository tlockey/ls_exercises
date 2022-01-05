=begin
input: sort an array with one type of data using merge sort
output: 

=end
require 'pry'

def merge_sort(array)
  array_size = array.size 
  half = array_size / 2

  return array if array_size == 1

  arr1 = array[0...half]
  arr2 = array[half..-1]

  arr1 = merge_sort(arr1)
  arr2 = merge_sort(arr2)
  
  return merge(arr1, arr2)
  
end

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

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
