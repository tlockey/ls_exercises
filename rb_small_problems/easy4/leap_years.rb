=begin
input: any year greater than 0
output: true if leap year, false if not leap year
Leap Year:
(year % 4 == 0 && year % 100 != 0) 
(year % 100 == 0 && year % 400 == 0)
=end

def leap_year?(year)
  year = get_valid_year unless valid_year?(year)
  return true if (year % 4 == 0 && year % 100 != 0) || 
                 (year % 100 == 0 && year % 400 == 0)
  false
end

def valid_year?(year)
  year > 0
end

def get_valid_year
  loop do
    print "please enter year greater than 0: "
    year = gets.chomp.to_i
    break year if valid_year?(year)
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
