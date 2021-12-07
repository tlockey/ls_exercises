=begin
input: a string
output: a list of all substrings that start with the beginning of string
        sorted
=end

def leading_substrings(string)
  substrings = []
  1.upto(string.size) do |ending|
    substrings << string[0...ending]
  end
  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
