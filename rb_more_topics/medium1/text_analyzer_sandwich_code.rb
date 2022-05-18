=begin
Problem: Create a method that takes a block.
         The block will dictate how the text will be processed
Questions:
- where should i read in the text? 
  - ideally the text is an argument. 
  - but if not, should it be part of the block?
  - for simplicity, lets say the text is part of the method

rules:
- Paragraphs: have one empty line between them
- Lines: each line ends with a newline character
- Words: A single space appears between all words
         
=end

class TextAnalyzer
  def process
    file = File.open("text.txt")
    result = yield(file)
    puts result
    file.close
  end
end

analyzer = TextAnalyzer.new

analyzer.process do |text|
   "#{text.readlines.map(&:chomp).count('') + 1} paragraphs"
end
 # => 3 paragraphs

analyzer.process do |text|
  "#{text.readlines.size} lines"
end 
# => 15 lines

analyzer.process do |text|
  "#{text.read.split(/\s+/).size} words"
end 
# => 126 words
