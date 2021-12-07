=begin
input:starting number, ending number
output: all numbers between them, unless:
        number % 3 == 0 -> Fizz
        number % 5 == 0 -> Buzz
        number % 3 && 5 -> FizzBuzz
=end

def fizzbuzz(start, ending)
  start.upto(ending) do |number|
    if (number % 5 == 0) || (number % 3 == 0)
      output = ''
      output << 'Fizz' if (number % 3 == 0)
      output << 'Buzz' if (number % 5 == 0)
      print output
    else
      print number
    end
    print ", " unless number == ending
  end
end
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
