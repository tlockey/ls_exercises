items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*first, last|
  puts first.join(', ')
  puts last
end

=begin
Let's start gathering food.
apples, corn, cabbage
wheat
We've finished gathering!
=end

gather(items) do |first, *middle,last |
  puts first
  puts middle.join(', ')
  puts last
end

=begin
Let's start gathering food.
apples
corn, cabbage
wheat
We've finished gathering!
=end

gather(items) do |first, *last |
  puts first
  puts last.join(', ')
end

=begin
Let's start gathering food.
apples
corn, cabbage, wheat
We've finished gathering!
=end

gather(items) do |first, second, third, fourth|
  puts [first, second, third].join(', ') + ' and ' + fourth
end

=begin 
Let's start gathering food.
apples, corn, cabbage, and wheat
We've finished gathering!
=end
