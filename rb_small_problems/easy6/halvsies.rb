=begin
input: one array
output: an array with two arrays nested, the first nested array with the first
        half or first half + 1 elements and second array with remaining

=end

def halvsies(array)
  new_array = [[]]
  half = array.size/2
  half += 1 if array.size.odd?
  half.times do
    new_array[0] << array.shift
  end
  new_array << array
  new_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
