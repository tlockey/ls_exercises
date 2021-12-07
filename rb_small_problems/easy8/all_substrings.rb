=begin
input: a string
output: all substrings of a string

=end

def leading_substrings(string)
  substrings = []
  1.upto(string.size) do |ending|
    substrings << string[0...ending]
  end
  substrings
end

def substrings(string)
  all_substrings = []
  0.upto(string.size) do |beginning|
    all_substrings << leading_substrings(string[beginning..-1])
  end
  all_substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
