=begin
input: nested array [fruit, quantity]
output: flattened array with correct number of fruits
=end

def buy_fruit(grocery_list)
  cart = []
  grocery_list.each {|item, quantity| quantity.times {cart << item}}
  cart
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
