=begin
input: a string
output: a new string where every uppercase letter is replaced by lowercase
        all other characters are unchanged
=end

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  string.chars.map do |char|
    if UPPERCASE.include?(char)
      char.downcase!
    elsif LOWERCASE.include?(char)
      char.upcase!
    else
      char
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
