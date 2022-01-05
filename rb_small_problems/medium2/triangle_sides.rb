=begin
input: three numbers that represent the sides of a triangle
output: symbol -> the triangle is equilateral, isosceles, scalene, or invalid

- check if all sides have lengths greater than zero -> if not, invalid
- check if all sides are equal -> equilateral
- sort sides from shortest to longest
- check if the sum first two sides are greater than the last side -> 
                                                          if not, invalid
- check if two sides are the same length
- if valid and not sides are the same -> scalene

- valid?
  - all sides greater than 0
  - sum of first two sides are greater than the last side
-

=end

def triangle(s1, s2, s3)
  sides = [s1, s2, s3].sort
  return :invalid unless valid_triangle?(sides)
  return :equilateral if sides.all?{|side| side == sides[0]}
  return :isosceles if sides[0] == sides[1] or sides[1] == sides [2]
  :scalene
end

def valid_triangle?(sides)
  sides.all?{|side| side > 0} and ((sides[0] + sides[1]) > sides[2])
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
