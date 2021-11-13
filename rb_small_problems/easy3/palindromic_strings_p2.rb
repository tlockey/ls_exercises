=begin
Check if string is palindrome, like p1 but this time it's case-insensitive
and it only counts alphanumeric characters
1. change string so that it is all downcase
2. change string so that it only has
=end

# method without the String#delete method: 

LETTERS = ('a'..'z').to_a
NUMBERS = ('0'..'9').to_a
ALPHANUMERICS = LETTERS + NUMBERS

def downcase_alphanumerics(string)
  string.downcase.chars.select{|char| ALPHANUMERICS.include?(char)}.join
end

def real_palindrome?(input)
  input = downcase_alphanumerics(input)
  palindrome?(input)
end

# using the String#delete method:

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

# brute force method from pt1:

def palindrome?(input)
  forward_counter = 0
  backward_counter = input.size - 1
  same = []
  while forward_counter < backward_counter
    same << (input[forward_counter] == input[backward_counter].downcase)
    forward_counter += 1
    backward_counter -= 1
  end
  ! same.include?(false)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
