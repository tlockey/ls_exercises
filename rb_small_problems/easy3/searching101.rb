=begin
input: 6 integers
output: the (sixth number) appears in []
        the (sixth number) does not appear in [array]
1. get 6 numbers
2. put first 5 numbers in array
3. check if 6th number is in array
4. print output
=end

def th_er(number)
  case number
  when 1 then '1st'
  when 2 then '2nd'
  when 3 then '3rd'
  else "#{number}th"
  end
end

five_numbers = []

counter = 1
loop do
  print "Enter the #{th_er(counter)} number --> "
  five_numbers[counter - 1] = gets.chomp.to_i
  counter += 1
  break if counter > 5
end

print 'Enter the last number --> '
last_number = gets.chomp.to_i

if five_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{five_numbers}."
else
  puts "The number #{last_number} does not appear in #{five_numbers}."
end
