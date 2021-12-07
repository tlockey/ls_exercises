=begin
input: one string
output: a new string with only the first letter of every word capitalized
        everything else lowercased
=end

def word_cap(string)
  string.split.map do |word|
    word[0].upcase + word[1..-1].downcase
  end.join(' ')
end

# or

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
