=begin

input: bill amount, tip rate
output: tip, total amount of bill
implicit rules:
  - bill amount is float
  - round output to one decimal point
  - tip is entered as an integer

=end

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_percent = gets.chomp.to_f

tip = bill * (tip_percent/100)
total = bill + tip

puts ""
puts "The tip is $#{ sprintf("%0.2f",tip) }"
puts "The total is $#{ sprintf("%0.2f",total) }"
