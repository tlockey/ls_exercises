=begin
Write method, takes one parameter
input: an integer
output: true if palindromic
        false if not palindromic
- turn integer into string,
- front-counter = 1
- back-counter = -1
- check if string[front_counter]== string[back_counter]
- increment front-counter by 1
- decrement back-counter by 1
- continue until front-counter == back-counter * -1
- if all front-back comparisons are true then palindrome
=end

def palindromic_number?(integer)
  int_string = integer.to_s
  front_counter = 0
  back_counter = int_string.size
  loop do
    if int_string[front_counter] == int_string[back_counter - 1]
      front_counter += 1
      back_counter -= 1
    else
      return false
    end
    break true if front_counter >= back_counter
  end
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
