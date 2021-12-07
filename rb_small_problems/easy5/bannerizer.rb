=begin
input: string
output: string in box

first line: +-{'-' * string.length}-+\
second line: | {' ' * string.length} |
third line:  {string } 
fourth line: same as second line
third line: same as first line
=end

def print_in_box(text)
  horizontal_rule = "+-#{'-' * text.length}-+"
  empty_line = "\| #{' ' * text.length} \|"

  puts horizontal_rule
  puts empty_line
  puts "\| #{text} \|"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
