=begin
input: an integer (year)
output: a string (the century number + st, nd, rd, th)
- the last number ends in
how many digits there are
check the last two numbers:
  - 11 -> th
  - 12 -> th
  - 13 -> th
  if ends with
  - 1 -> st
  - 2 -> nd
  - 3 -> rd
  else -> th
- Divide integer by 100 -> store value -> base century
- modulo integer by 100 -> if greater than 0, add 1 to century
- return century
- th_er then return string

needs refactoring
=end

def century(year)
  century = year / 100
  century += 1 if year % 100 > 0
  "#{century}" + ordinal_ending(century.to_s)
end

def ordinal_ending(century_str)
  array = century_str.chars.map{ |x| x.to_i}
  case array.last
  when 1, 2, 3 
    if array.last(2)[0] == 1 && array.size > 1
      return "th"
    elsif array.last == 1
      return "st"
    elsif array.last == 2
      return "nd"
    elsif array.last == 3
      return "rd"
    end
  else
    return "th"
  end
end

p century(5) == '1st'
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
