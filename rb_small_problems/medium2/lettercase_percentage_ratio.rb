=begin
input: string
output: hash: lowercase: percentage, uppercase: percentage, neither:

- get string, get total count of characters
- select lowercase charactersin string, get count
- select uppercase, get count
- select neither upper nor lower, get count
- calculate percentage
- put calculations in hash

=end

def letter_percentages(string)
  total = string.chars.size

  lower_percentage = calculate_percentage(count_lower(string), total)
  upper_percentage = calculate_percentage(count_upper(string), total)
  neither_percentage = calculate_percentage(count_neither(string), total)

  { lowercase: lower_percentage,
    uppercase: upper_percentage,
    neither: neither_percentage }
end

def count_lower(string)
  string.count('a-z')
end

def count_upper(string)
  string.count('A-Z')
end

def count_neither(string)
  string.count('^a-zA-Z')
end

def calculate_percentage(part, whole)
  ((part.to_f/ whole.to_f) * 100).round(1)
end

p letter_percentages('abcdefGHI')
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
