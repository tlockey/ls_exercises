=begin
input: integer argument
output: array of all integers between 1 and argument
=end

def sequence(number)
  return (1..number).to_a unless number <= 0
  "invalid number -- must be positive"
end
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
