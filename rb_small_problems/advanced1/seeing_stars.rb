=begin
input: an odd integer n (>= 7) that represents the grid for an 8 pointed star
output: an 8 pointed star

- the middle is easy: it's just '*' * n 
- the bottom is the top but in reverse
- the top is 
- there is always a star in the center
- Aside from the middle, there are only three stars on each line
then there are three stars one direction up from center
There are two distances: space from center horizontal, space from center vertical
the space from center horizontal dictates the space of each star on the side
from the middle star. 

- if distance is 0 from center, this is horizontal center
- if distance is 1 from center, spaces from vertcenter star = 0
- if distance is 2 from center, spaces from vertcenter star = 1
- if distance is 3 from center, spaces from vertcenter star = 2
-  if distance is 4 from center, spaces from vertcenter star = 3 

[ {star 1}{space*modifier}{centerstar}{space*modifier}{star2} ] centered

- how to center?
*   *   * #4
 *  *  *  #3
  * * *   #2
   ***    #1
********* #0

write a method that prints three stars, with spaces that depend on a distance
from the center
so from the top, distance is 4, spaces from center is 3
(STAR + (SPACE * (d-1)) + STAR + (SPACE * (d-1)) + STAR).center(9)

n = 7

=end

STAR = '*'
SPACE = ' '

def star(n)
  half = (n / 2)
  half.downto(1) { |d| print_stars(d, n) }
  print_center(n)
  1.upto(half) { |d| print_stars(d,n) }
end

def print_center(n)
  puts STAR * n
end

def print_stars(d, n)
  puts (STAR + (SPACE * (d - 1)) + STAR + (SPACE * (d - 1)) + STAR).center(n)
end

star(7)
# star(9)
