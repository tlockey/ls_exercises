=begin
input: integer greater than 0
       's' for sum, or 'p' for product
output: sum or product of all numbers between 1 and the entered integer
=end

def compute_sum(ending_int)
  (1..ending_int).inject(:+)
end

def compute_product(ending_int)
  (1..ending_int).inject(:*)
end

puts "Please enter an integer greater than 0:"
ending_int = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to computer the product."
operation = gets.chomp

if operation == 's'
  puts "The sum of the integers between 1 and #{ending_int} is " + 
        "#{compute_sum(ending_int)}"

elsif operation == 'p'
  puts "The product of the integers between 1 and #{ending_int} is " + 
        "#{compute_product(ending_int)}"
else
  puts "Oops. Unknown operation."
end

