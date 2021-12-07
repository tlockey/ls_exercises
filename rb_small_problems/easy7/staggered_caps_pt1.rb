=begin
input: string
output: every other character is capitalized.
        none letters count as characters when switching
        numbers don't count
=end

NUMBERS = (0..9).to_a

def staggered_case(string)
  index = 0
  string.chars.map do |char|
    if (index.even?) && !(NUMBERS.include?(char))
      index += 1
      char.upcase
    elsif (index.odd?) && !(NUMBERS.include?(char))
      index += 1
      char.downcase
    else
      char
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
