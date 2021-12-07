=begin
input: array of strings
output: array of strings but with vowels removed
- get array
- for each word: delete vowels
- put new word into new array
- return new array
=end
def remove_vowels(string_array)
  string_array.map { |word| word.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
