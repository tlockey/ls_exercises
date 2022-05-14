=begin
input: array
output: number of times block returns true
=end

def count(array)
  counter = 0
  array.each do |element|
    counter += 1 if yield(element)
  end
  counter
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2

# No each, loop, while, or until:

def count(array)
  total = 0
  0.upto(array.size - 1) do |idx|
    total += 1 if yield(array[idx])
  end
  total
end

# passing blocks around:

def count(collection, &block)
  collection.select(&block).size
end
