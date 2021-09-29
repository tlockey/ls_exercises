=begin
input: array of strings
output: a list of each element in the string => number of occurrences
think, a hash would be a good data structure for this exercise.
GET array
SET empty hash
ITERATE over array
IF array element is not a key in the hash, add it to hash and set value to 1
ELSE hash[key] value +=1
print hash

further exploration available
=end

def count_occurrences(array)
  occurrences = {}
  array.each do |element|
    if occurrences.key?(element)
      occurrences[element] += 1
    else 
      occurrences[element] = 1
    end
  end
  occurrences.each do |key,value|
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# further exploration

def count_occurrences_insensitive(array)
  occurrences = {}
  
  array.map!(&:downcase)

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences_insensitive(vehicles)
