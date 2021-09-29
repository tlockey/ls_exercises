=begin 
input: age (int)
       age to retire (int)
output: current year, year they will retire
        number of working years left
=end

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

years_left = retire_age - age
this_year = Time.now.year

puts ""
puts "It's #{this_year}. You will retire in #{this_year + years_left}."
puts "You only have #{years_left} years of work to go!"
