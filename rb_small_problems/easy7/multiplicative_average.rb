=begin
input: array of integers
output: multiplies all numbers together, divides result by number of entries
        prints reult rounded to 3 decimal places
=end

def show_multiplicative_average(array)
  result = array.inject(:*) / array.size.to_f
  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
