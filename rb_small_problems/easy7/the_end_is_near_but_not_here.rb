=begin
input: string of words
output: penultimate word in string
=end
def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
