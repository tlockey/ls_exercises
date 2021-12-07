=begin
input: an integer, positive, negative or 0 (represents number of minutes
       before or after midnight)
output: string -> time in 24:00 format 24:00 minus or plus number of minutes
If 0 -> 00:00
If negative -> before midnight (23:57) --> 24:00 - 3 -> (24):(60)
If positive -> after midnight (00:35) --> (00:00 + 35)
00
  00 --> 59
23
800 -> break down into "minutes" and "hours" -> .divmod(60)
[13, 20] -> 13 -> hours, 20 -> minutes
it's positive so I add the first value to 00, and the second value to 00
"13:20"
---
-3 
[-1, 57] 
Negative, so subtract 1 from 24, add 57 to 00
23:57 
---
-4231
[-71, 29] 71 is greater than 24 > -71 % 24 -> 1
"01:29"
- second element is how many times we iterate over the minute loop
- first element is -71
---
-1437
[-24, 3] 24 - 24 == 0 ; 0 + 3 = 3
"00:03"

if first element is negative, hour starting value is 24
if first element is positive, hour starting value is 00
if absolute value of first element is greater than 24, first element %= 24

- break down into minutes and hours by using div mod
- find sign of first element, turn element into absolute value
- if first element is greater than 24 reassign to result of % 
- if sign is positive, hour
- if sign is negative, subtract hour from 24
- format results 
  - convert to string -> add leading 0 if necessary
  - if string length of hour == 1
    - "3" -> "03"
  - if string length of minute == 1
    - "3 -> 0"
=end
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(total_minutes)
  sign = "+"
  hours, minutes = total_minutes.divmod(MINUTES_PER_HOUR)
  
  if hours < 0
    sign = "-"
    hours *= -1
  end

  hours %= HOURS_PER_DAY if hours > HOURS_PER_DAY
  hours = HOURS_PER_DAY - hours if sign == "-"
  "#{format("%0.2i", hours)}:#{format("%0.2i", minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
