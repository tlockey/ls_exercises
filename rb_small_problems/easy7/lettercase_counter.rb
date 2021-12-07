=begin
input: a string
output: a hash with: number of characters in string that are lowercase
                     number of characters in string that are uppercase
                     number of characters that are neither

=end

def letter_case_count(string)
  uppercase = string.count('A-Z')
  lowercase = string.count('a-z')
  neither = string.count('^A-Za-z')
  { lowercase: lowercase, uppercase: uppercase, neither: neither }
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
