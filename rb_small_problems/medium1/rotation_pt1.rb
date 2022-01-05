=begin
-input: an array
-output: a new array but the first element is at the end
=end

# def rotate_array(array)
#   array = array.dup
#   array << array.shift
# end

# or

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# further exploration:
# rotate a string instead of an array

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string('hello') == 'elloh'
p rotate_string('wassap people') == 'assap peoplew'

# rotate integers

def rotate_integers(int)
  rotate_array(int.digits.reverse).join.to_i
end

p rotate_integers(1234) == 2341
p rotate_integers(4521) == 5214
