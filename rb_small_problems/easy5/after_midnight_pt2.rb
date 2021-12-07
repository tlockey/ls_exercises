=begin
input: a string "24:00"
two methods:
  after_midnight output: an integer representation of number of minutes after md
  before_midnight output: an integer representation of number of minuter b4 md
rules
  - both method should return a value between 0 and 1439

Examples:
  - "00:00" -> [0, 0] -> 0
  after midnight:
  - '12: 34' -> [12, 34] -> [12*60, 34] -> 754
  - '24: 00' -> [24, 00] -> [1440, 00] -> if greater than 1439, hour = 0 ?
  before midnight:
  - '12: 34' -> [12, 34] -> [12*60, 34] -> 754 -> 1439 - 754 -> 685
  - '24: 00' -> [24, 00] -> [1440, 00] -> 
=end
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MAX_TIME_IN_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def string_time_to_numbers(string)
  string.split(':').map!{|time| time.to_i}
end

def after_midnight(string)
  hours, minutes = string_time_to_numbers(string)
  hours *= MINUTES_PER_HOUR
  hours = 0 if hours > MAX_TIME_IN_DAY - 1
  hours + minutes
end

def before_midnight(string)
  hours, minutes = string_time_to_numbers(string)
  hours *= MINUTES_PER_HOUR
  hours = 1440 if hours <= 0
  MAX_TIME_IN_DAY - (hours + minutes)
end
p after_midnight('00:00') == 0
p after_midnight('12:34') == 754
p after_midnight('24:00') == 0

p before_midnight('24:00') == 0
p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
