=begin
input: a string
output: all palindromic substrings of input
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

def palindromes(string)
  substrings(string).select{|substring| palindrome?(substring)}
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
