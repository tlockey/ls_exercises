=begin
input: integer 
output: an array of all divisors of that integer 

rules:
- divisor: any integer that when [given] is divided by it, returns a whole number
- can be in any order

steps: 
- beginning from 1 up to that Integer
- modulo by [counter], if result is 0, add to results list
=end

def divisors(n)
  divisors = []
  1.upto(n) do |c|
   divisors << c if n % c == 0
  end
  divisors
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

# using Enumerable#select:
def divisors(n)
  1.upto(n).select do |c|
    n % c == 0
  end
end

