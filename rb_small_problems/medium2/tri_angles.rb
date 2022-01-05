=begin
input: 3 numbers that represent the three angles of a triangle
output: symbol -> invalide, right, acute, obtuse

rules:
- assume all integer valued angles
- all in degrees

algorithm: 
- check if valid
  - sum of angles must be 180 
  - all angles must be greater than 0

-
=end

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  return :invalid unless valid_triangle?(angles)
  return :right if angles.include?(90)
  return :obtuse if angles.any?{|a| a > 90 }
  :acute
end

def valid_triangle?(angles)
  angles.reduce(:+) == 180 and angles.all?{|a| a > 0}
end
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
