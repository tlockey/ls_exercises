=begin
input: a positive integer
output: a right angle triangle with that many stars on all sides


=end

def triangle(n)
  counter = 1
  n.times do
    puts "#{' ' * (n - counter)}#{'*' * counter}"
    counter += 1
  end
end

def upsidedown_triangle(n)
  counter = n
  n.times do
    puts "#{'*' * counter}#{' ' * (n - counter)}"
    counter -= 1
  end
end

triangle(5)
triangle(9)
upsidedown_triangle(5)
upsidedown_triangle(9)
