=begin
input: n number of lights
       n number of repetitions
- all lights initially off
- first round -> turn on all lights
- secound round -> toggle very two lights
- third round -> toggle every 3 lights
- fourth round -> toggle every 4 lights, etc
- nth round..
output: after n number of rounds, say which lights are on, in array

booleans -> True -> on, False -> off
hash to contain light bulbs. 

1. generate hash of lightbulbs [1]..[n], set value to off
2. set a step-counter: 1. 
3. n number of times, iterate over hash,
  - if key % step counter == 0, then change the value to the opposite of what it is
  - step_counter += 1
4. select keys of hash for which value is true. Return as array
=end

def generate_hash(n)
  hash = {}
  1.upto(n) do |count|
    hash[count] = false
  end
  hash
end

def toggle_lightbulbs(n)
  lightbulbs = generate_hash(n)
  1.upto(n) do |count|
    lightbulbs.each do |bulb, toggle|
      if bulb % count == 0
        lightbulbs[bulb] = !toggle
      end
    end
  end
  lightbulbs.select{|_, toggle| toggle == true}.keys
end

p toggle_lightbulbs(5) == [1, 4]
p toggle_lightbulbs(10) == [1, 4, 9]
p toggle_lightbulbs(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
