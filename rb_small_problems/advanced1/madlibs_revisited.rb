=begin
input: a text file
output: a print of that text file with words plugged in

- how to read a file in Ruby?
- how can i plug in values into the read text?

- i could potentially use regex

- i need a list of
    - adjectives
    - nouns
    - adverbs

- find pattern /%{(.)}/
-
=end

ADJECTIVES = %w(quick lazy sleepy ugly)
NOUNS = %w(fox dog head leg)
VERBS = %w(jumps lifts bites licks)
ADVERBS = %w(easily lazily noisily excitedly)



madlib = File.open('madlib.txt')

p (madlib.readlines.map(&:chomp).map do |line|
  line.delete('/\\#').gsub(/\{(noun|verb|adverb|adjective)\}/, 
                          '{noun}' => NOUNS.sample,
                          '{verb}' => VERBS.sample,
                          '{adverb}' => ADVERBS.sample,
                          '{adjective}' => ADJECTIVES.sample)
end).join(' ')

