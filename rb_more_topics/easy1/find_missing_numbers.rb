=begin 
input: sorted array of integers
output: all the missing integers in order between the first and last elements of arguments
example: 
  missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
  -3, -2, -1, 0, 1, 2, 3, 4, 5

  missing([1, 2, 3, 4]) == []
  missing([1, 5]) == [2, 3, 4]
  missing([6]) == []
  - first and last number is the same [6]
rules:
- given is always sorted 
- output must always be sorted
- if no numbers missing from given, return empty array 
steps:
 - get the first and last integer
#  - beginning with first number, increment by 1
#  - check if that number exists in [given]
#     - if not, add it
#  - increment again
#  - repeat until number is greater than last number
 - get all the numbers in between first and last integer [all]
 - for each number in [all], check if it exists in [given]
    - if it does, skip
    - if it doesn't, add to [return]
=end

def missing(array)
  first = array.first
  last = array.last
  results = []
  (first..last).to_a.each do |number|
   results << number unless array.include?(number)
  end
  results
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# no block solution:
def missing(array)
  result = []
  counter = array.first
  while counter < array.last 
    counter += 1
    result << counter unless array.include?(counter)
  end
  result
end

# Another solution:
def missing(array)
  total = (array[0]..array[-1]).to_a
  total - array
end
