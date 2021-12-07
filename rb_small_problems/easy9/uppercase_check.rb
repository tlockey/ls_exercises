=begin
input: string
output: true if all uppercase
        false if not
rules:
- ignore none-alpha characters

algorithm:
- select all alpha characters
- check if all uppercase
=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
