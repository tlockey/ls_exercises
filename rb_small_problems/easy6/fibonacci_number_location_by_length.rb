=begin
input: an integer which represents the number of digits of a fibonacci number
output: an integer which represents the position of the first number to reach 
        that many digits in the fibonnaci sequence

- generate a list of fibonacci numbers
  - array = [1, 1]
  - array = [1, 1, array[current_index-1] + array_[current_index - 2]...]
- stop when the number of digits of a generated number reaches the input
  - number_of_digtarray.last.digits.size == input
- return the size of array
=end

require 'pry'

def find_fibonacci_index_by_length(input)
  first = 1
  second = 1
  index = 2
  loop do 
    index += 1
    fibonacci = first + second
    break if fibonacci.digits.size >= input
    first = second
    second = fibonacci
  end
index
end
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
