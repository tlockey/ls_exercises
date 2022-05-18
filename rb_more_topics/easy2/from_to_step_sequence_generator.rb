
# testing original step method:

p (1..10).step(2){|e| p e}

# writing my own:

def step(first, last, step)
  range = (first..last)
  while first <= last
    yield(first)
    first += step
  end
  range
end

p step(1,10,2){|e| p e}
step(1, 10, 3) { |value| puts "value = #{value}" }
