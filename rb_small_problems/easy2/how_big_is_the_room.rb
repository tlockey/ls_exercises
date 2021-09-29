=begin
input: length + width of a room in meters
output: area of room in sq m and s feet
=end
METERS_TO_FEET = 3.28084

puts "Enter the length of the room in meters:"
l = gets.chomp.to_f

puts "Enter the width of the room in meters:"
w = gets.chomp.to_f

a_meters = l * w
a_feet = ((l * METERS_TO_FEET) * (w * METERS_TO_FEET)).round(2)

puts "The area of the room is #{a_meters} square meters " +
      "(#{a_feet} square feet)."
