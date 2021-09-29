=begin
input: name or name! (string)
output: if input.include?('!') then "HELLO NAME. WHY ARE WE SCREAMING?"
        else "Hello NAME"

steps:
1. GET name
2. CHECK if name has "!"
3. if yes, uppercase name + print scream message
4. if no, capitalize name + print message
=end

print 'What is your name? '
name = gets.chomp

if name.include?('!')
  name.upcase!.slice!('!')
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  name.capitalize!
  puts "Hello #{name}."
end
