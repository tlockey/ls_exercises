# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc # encoding of location of proc
# puts my_proc.class # Proc
# my_proc.call # called with no arguments. parameter is nil
# my_proc.call('cat') # called with argument, passed to parameter



# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda # encoding 
# puts my_second_lambda # encoding
# puts my_lambda.class # proc
# my_lambda.call('dog') # this is a dog
# # my_lambda.call #arguement error
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." } #nothign

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."} # argument not passed through yield
# block_method_1('seal') # LocalJumpError

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."} # works
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}." # second parameter, nil
end
block_method_2('turtle') { puts "This is a #{animal}."} # no parameter to hold animal
