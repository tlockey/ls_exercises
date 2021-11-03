=begin
input: two positive integers
output: addition, subtraction, product, quotient, remainder, and power.
no input validation
=end

OPERATIONS = %i(+ - * / % **)

def prompt(msg)
  puts "==> #{msg}"
end

prompt "Enter the first number:"
int1 = gets.chomp.to_i

prompt "Enter the second number:"
int2 = gets.chomp.to_i

OPERATIONS.each do |operation|
  result = [int1, int2].inject(operation)
  prompt "#{int1} #{operation} #{int2} = #{result}"
end
