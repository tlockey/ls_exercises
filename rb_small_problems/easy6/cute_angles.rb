=begin
input: a floating point number which is an angle between 0 and 360 degrees
output: a string that represents the angle in degrees, minutes, seconds
1 degree = 60 minutes
1 minute = 60 seconds

example: 30 -> 30 degrees, 00 minutes, 00 seconds
76.73 -> degrees, minutes = input.divmod(1)
         minutes, seconds = (minutes * 60).divmod(1)
         seconds = (seconds * 60).round
=end
DEGREE = "\xC2\xB0"


def dms(input)
  degrees, minutes = input.divmod(1)
  minutes, seconds = (minutes * 60).round(2).divmod(1)
  seconds = (seconds * 60).round
  "#{degrees}°#{format('%0.2i', minutes)}\'#{format('%0.2i', seconds)}\""
end
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
