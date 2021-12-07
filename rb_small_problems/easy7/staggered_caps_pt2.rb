=begin
input: string
output: string with alternative capitalized letters, ignoring numbers and non
        alpha chracters in the toggle
=end
ALPHA = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(string)
  need_upper = true
  string.chars.map do |char|
    if ALPHA.include?(char)
      need_upper = !need_upper
      !need_upper ? char.upcase : char.downcase
    else
      char
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
