=begin
input: string
output: new string -> every consonant character is doubled
double everything between A-Z and a-z that is not AEIOU or aeiou
=end

VOWELS = %w(A E I O U a e i o u)
ALPHA = (('A'..'Z').to_a + ('a'..'z').to_a)
CONSONANTS = ALPHA.reject{|letter| VOWELS.include?(letter)}

def double_consonants(string)
  string.chars.map do |char|
    if CONSONANTS.include?(char)
      char * 2
    else
      char
    end
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
