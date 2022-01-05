=begin
Write 2 methods:
first method:
  input: rational number (fractions: 2/1, 127/60, etc)
  output: array of denominators that would make up the egyption fraction
second method:
  input: array of denominators that would make up the egyption fraction
  output: the rational number

definition:
- egyptian fraction -> a sum of distinct unit fractions 
                      (all the numerators are 1)

questions:
- how to find the egyptian fraction?
  - set egyptian_fractions = []
  - set n = 1 (n is denominator)
  - check whether 1/n can be part of the solution:
    - Subtract 1/n from fraction
    - if result >= 0, add n to egyptian_fractions
    - n += 1
    - break if result == 0

algorithm second method:
- array [1,2,3,6]

=end 

def egyptian(rational)
  denominators = []
  n = 1
  result = rational 
  loop do
    result = rational - Rational(1, n)
    if result >= 0
      denominators << n
      rational = result
    end
    n += 1
    break if result == 0
  end
  denominators
end

def unegyptian(denominators) # array
  sum = 0
  denominators.each do |denominator|
    sum += Rational(1, denominator)
  end
  sum
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)


