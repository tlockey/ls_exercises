=begin
input: an integer representing a year after 1752
output: the number of Friday the 13ths

- how to check if the date is 13
- how to check if the day is friday

check each month:
check if the thirteeth day of the month falls on friday

friday is the 5th day, this repeats over and over.

January 1752 is what day? 

Iterate over each day in the year beginning at January 1, year
check if the date is a friday
if so, add to friday counter
=end

require 'date'

def friday_13th(year)
  thirteenth = Date.new(year, 1, 13)
  unlucky_fridays = 0

  12.times do 
    unlucky_fridays += 1 if thirteenth.friday? 
    thirteenth = thirteenth.next_month
  end
  unlucky_fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
