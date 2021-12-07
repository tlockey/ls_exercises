=begin
input: 3 scores
output: letter grade associated with the mean of the scores
=end

def get_grade(a,b,c)
  mean = (a + b + c)/3
  case mean
  when 0...60  then 'F'
  when 60...70 then 'D'
  when 70...80 then 'C'
  when 80...90 then 'B'
  else              'A'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
