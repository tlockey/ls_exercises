=begin
input: array of integers between 0 and 19
returns: Array of those integers sorted based on alphabetical words
-> have hash with integer keys, english word values
call sort_by on array by values
=end

ENGLISH_WORDS = %w(zero one two three four five six seven eight nine ten
                   eleven twelve thirteen fourteen fifteen sixteen seventeen
                   eighteen nineteen)

def alphabetic_number_sort(number_array)
  number_array.sort_by{|number| ENGLISH_WORDS[number]}
end

# or, using sort
def alphabetic_number_sort(number_array)
  number_array.sort{|a,b| ENGLISH_WORDS[a] <=> ENGLISH_WORDS[b]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
