=begin
write a method:
  argument: string
  return: boolean
  side effect: none
explicit rules:
  case, punctuation, and spaces matter
=end

# rubyist solution

def palindrome?(input)
  reverse(input) == input
end

# brute force solution

def palindrome?(input)
  forward_counter = 0
  backward_counter = input.size - 1
  same = []
  while forward_counter < backward_counter
    same << (input[forward_counter] == input[backward_counter])
    forward_counter += 1
    backward_counter -= 1
  end
  ! same.include?(false)
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([3, 5, 6, 6, 5, 3]) == true
