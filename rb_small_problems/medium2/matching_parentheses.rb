=begin
input: string
output: true or false, dpending if paranthesis are matching

balanced means: '(' followed by ')' in pairs
)( -> not balanced
(() -> not balanced
) -> not balanced
( )) -> not balanced
((())) -> balanced
()()() -> balanced
)) (( -> not balanced
(he(l)o) -> balanced
(( ))) ( -> not balanced

()( )

This conditions must be true:
- equal number of '(' and ')'
- starts with '('
- ends with ')'

- take all the parenthesis out of the string
- check if the number of '(' and ')' are equal
- check if it starts with '(', check if it ends with ')'
=end

def balanced?(string)
  balanced = true
  parentheses = string.chars.select{ |char| '/[\(\)]/'.include?(char)}.join
  return true if parentheses == ''
  balanced = false if parentheses.count('/\(/') != parentheses.count('/\)/')
  balanced = false if !parentheses.start_with?('(')
  balanced = false if !parentheses.end_with?(')')
  balanced
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
