=begin
input: an odd integer n
output: a diamond on a n X n grid

- n/2 spaces + n-(n/2*2)* + n/2 spaces
- n/3 spaces + n-(n/3*2) * _ n/3 spaces
- n/4
- n/5
=end

def make_diamond(n)
  number_of_lines = n/2
  print_top(n, number_of_lines)
  print_middle(n)
  print_bottom(n, number_of_lines)
end

def print_top(n, number_of_lines)
  space_counter = 2
  star_counter = 1
  number_of_lines.times do
    puts "#{' ' * (n/space_counter)}#{'*' * star_counter}#{' ' * (n/space_counter)}"
    space_counter += 1
    star_counter += 2
  end
end

def print_middle(n)
  puts "*" * n
end

def print_bottom(n, number_of_lines)
  space_counter = number_of_lines + 1
  star_counter = n - 2
  number_of_lines.downto(1) do
    puts "#{' ' * (n/space_counter)}#{'*' * star_counter}#{' ' * (n/space_counter)}"
    space_counter -= 1
    star_counter -= 2
  end
end

make_diamond(1)
make_diamond(3)
make_diamond(9)
make_diamond(9)
