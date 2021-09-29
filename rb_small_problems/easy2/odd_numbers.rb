=begin
output: all odd numbers from 1 to 99, inclusive
rules:
- each number on a separate line
=end

(1..99).each { |x| puts x if x.odd? }

#or

1.upto(99) {|i| puts i if i % 2 == 1}
