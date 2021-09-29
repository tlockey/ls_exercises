=begin
inputs: positive integer -- salary
        boolean -- bonus
outputs: integer, 
         if bonus is true, salary/2
         else, 0
=end

def calculate_bonus(salary,bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
