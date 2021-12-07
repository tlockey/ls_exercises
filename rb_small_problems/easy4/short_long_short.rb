=begin
input: 2 strings, one shorter, one longer
output: 1 string -> the shorter string, the longer string, shorter string
arrays to hold the two
- take in two strings into one array
- sort the array, by lengths shortest to longest
- take the first element of the array, push it into an empty string, followed
  by second element, followed by first element
7 minutes
=end

def short_long_short(string1, string2)
  array = [string1, string2].sort_by { |string| string.length}
  "#{array[0]}#{array[1]}#{array[0]}"
end

p short_long_short('abc', 'defgh')  == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz')  == "xyz"
