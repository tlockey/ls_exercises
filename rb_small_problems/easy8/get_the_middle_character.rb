=begin
input:a non-empty string
output:returns the middle character or characters
        if string.length.odd? -> return middle character
        else -> return middle two characters
- odd or even?
- if odd (3) 0, 1, 2, 
  -  divide by 2 => 1
  - return letter at that index ()
- if even (4), 0, 1, 2, 3
  - divide length by 2 - > 2
  - return letter at that index-1 .. index
=end
def center_of(string)
  length = string.length
  middle = length/2
  length.odd? ? string[middle] : string[middle-1..middle]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
