=begin
input: a number 'n' representing a number of positive integers starting frrom 1
output: the difference between (square of sum of first n numbers) and 
                               (sum of squares of first n numbers)

- create array of first n numbers
- get sum of array and square it
- create array of squares of first n numbers
- get sum of array
- get difference
=end

def sum_square_difference(n)
  square_of_sum(n) - sum_of_squares(n)
end

def square_of_sum(n)
  sum = 0
  1.upto(n) do |number|
    sum += number
  end
  sum ** 2
end

def sum_of_squares(n)
  sum = 0
  1.upto(n) do |number|
    sum += number ** 2
  end
  sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
