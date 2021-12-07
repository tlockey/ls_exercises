=begin
update program so that if the year is before 1752, only check if it's evenly
divisible by 4
=end
def leap_year?(year)
  year = get_valid_year unless valid_year?(year)
  if julian_calendar?(year)
    if year % 4 == 0
      return true
    else
      return false
    end
  else
    if year % 400 == 0
      return true
    elsif year % 100 == 0
      return false
    elsif year % 4 == 0
      return true
    end
  end
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

def julian_calendar?(year)
  year < 1752
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
