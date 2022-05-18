# create a new Enumerator object
# that can iterate over an infinite list of factorials
# test it by printing out the first 7 factorial values

# what is a factorial
=begin
0! = 1
product, current number
product = 1
current number = 1
index = 0
1! = 1
2! = 2 * 1 = 2
3! = 3 * 2 * 1 = 6
4! = 4 * 3 * 2 * 1 = 24
5! = 5 * 4 * 3 * 2 * 1 = 120
6! = 720
7! = 5040

=end
factorials = Enumerator.new do |x|
  factorial = 1
  counter = 0
  x << factorial
  loop do
    counter += 1
    factorial *= counter
    x << factorial
  end
end
puts factorials.take(7)
puts factorials.take(3)
puts factorials.rewind
puts factorials.take(7)
