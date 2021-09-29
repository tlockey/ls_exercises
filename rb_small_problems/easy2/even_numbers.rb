=begin
output: all even numbers from 1 to 99, inclusive
rule: each number on a separate line.
=end

puts "version 1"
counter = 1
while counter <= 99 do
  puts counter if counter.even?
  counter += 1
end

# or

puts "version 2"
1.upto(99) { |x| puts x if x.even?}

# or 

puts "version 3"
(1..99).each { |i| puts i unless i.odd?}
