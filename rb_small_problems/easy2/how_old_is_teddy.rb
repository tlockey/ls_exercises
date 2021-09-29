=begin
Generate a random number between 20 and 200 for teddy's age
=end

print "Name = "
name = gets.chomp

if name == ""
  puts "Teddy is #{rand(20..200)} years old!"
else
  puts "#{name} is #{rand(20..200)} years old!"
end

