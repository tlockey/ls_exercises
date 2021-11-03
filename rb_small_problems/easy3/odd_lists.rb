=begin
write a method that returns an Array that contains every other element
of an Array that is passed in as an argument.
The values in the returned list should be those values that are in the
1st, 3rd, 5th, and so on elements of the argument array. 
=end

def oddities(array)
  odd_list = []
  array.each_with_index do |item, idx|
    odd_list << item if (idx + 1).odd?
  end
  odd_list
end

# or

def oddities(array)
  odd_list = []
  counter = 0
  while counter < array.size
    odd_list << array[counter]
    counter += 2
  end
  odd_list
end

# or

def oddities(array)
  array.select.with_index{|_, idx| idx.even?}
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def'])== ['abc']
p oddities([123]) == [123]
p oddities([]) == []
