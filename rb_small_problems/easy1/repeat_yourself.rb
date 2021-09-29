=begin
input: string, positive integer (x)
output: string printed x times
=end

def repeat(string,integer)
  integer.times do
    puts string
  end
end
repeat("Hello",3)
