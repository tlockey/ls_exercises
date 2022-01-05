=begin
input: 2 sorted arrays
output: a new array that contains all elements from both but in sorted order

rule;
- don't mutate the input arrays
- arrays are not of the same size
- can't use sort on the result array, must build one at a time

question:
can i use sort on each element of the array? 

- take the first element from each array
- compare the two, if the first one is smaller, put the smaller in first
  - if the second is larger, put the second in first
-continue until 

- how to deal with uneven array sizes?
so do the comparison
  if the result of the comparison is nil, return the 
check if either arr1[idx] or arr2[idx] are nil

- create new empty array
- take the sizes of both arrays
- set the larger size as the max iteration
- iterate from 0 to max iteration - 1 (idx)
- take idx element of both, a, b
  - check if a is valid
    - if a is invalid, place b in new array (and rest of b array)
  - check if b is valid (i.e. not nil)
    - if b is invalid, place a in new array (and rest of a array)
  else
    - compare items, place the larger of the two in new array, then lesser
^^^ this algorithm doesn't work.
- create a new empty array
- compare the size of the two arrays
- set the merged array to += larger array
- if the smaller array is empty return merged array
for each element of the smaller array: (a)
  - iterate over each element of merged array (b) with idx
  - if a <=> b == -1, insert a into merged[idx - 1]

=end

require 'pry'
def merge(arr1, arr2)
  merged = []
  smaller, larger = [arr1, arr2].sort
  return larger if smaller == []
  merged += larger
  smaller.each_with_index do |loose_item, loose_idx|
    merged.each_with_index do |merged_item, idx|
      if loose_idx == (smaller.size - 1)
        merged << loose_item
        break
      elsif (loose_item <=> merged_item) == -1
        merged.insert(idx, loose_item)
        break
      end
    end
  end
  merged
end
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
