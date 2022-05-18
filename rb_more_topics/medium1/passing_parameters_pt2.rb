=begin
problem: write a method
input: an array
output: yield array to block
block: 
  - ignores the first two elements
  - groups all remaining elements as a raptors array
=end

def passing_params(array)
  yield(array)
end

array = %w(raven, finch, hawk, eagle)
passing_params(array) do |_, _, *raptors|
  puts raptors

end
