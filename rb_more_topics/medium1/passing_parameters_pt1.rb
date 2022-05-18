=begin 
Move the display/output of items to a block

=end
items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

gather(items) do |items|
  puts "#{items.join('; ')}"
end
