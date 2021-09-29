=begin
input: a positive integer
output: string of alternating 1s and 0s
        beginning with 1 
        length of string matches integer
1. get integer
2. create an empty string
3. loop
   add a 1 to the string, unless the string size is odd, 
   then add a 0
   stop when size == integer size
4. return string
=end

def stringy(size)
  string=""
  size.times do
    string.size.odd? ? string << "0" : string << "1"
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# further exploration
puts " "
puts "Further exploration:"
puts " "

def stringy_2(size, start = 1)
  string=""
  if start == 1
    size.times do
     string.size.odd? ? string << "0" : string << "1"
    end
  else
    size.times do
      string.size.odd? ? string << "1" : string << "0"
     end
   end
  string
end

puts stringy_2(6,0) == '010101'
puts stringy_2(9,1) == '101010101'
puts stringy_2(4,0) == '0101'
puts stringy_2(7) == '1010101'
