=begin
input: a word
output: boolean: true if they can be spelled from the blocks
                 false if not

blocks:
B:O
G:T
V:I
X:K
R:E
L:Y
D:Q
F:S
Z:M
C:P
J:W
N:A
H:U

options: [[B,O], [G,T], [V:I]]
used: 

- nested arrays. You have a list of options. once letter is found in that list, 
  that entire option is off the table
['B','O']
- not case sensitive

- split word into letters
- for each letter, check if it's in the list of blocks:
  - iterate over list of blocks
  - for each block, iterate over letters, check if it matches letter
  - if not, check next block
  - if match found, remove block from options
  - all blocks in the box are checked, and no matches found, returns false
- if it is not, return false

=end

def block_word?(word)
  blocks = %w(BO GT VI XK RE LY DQ FS ZM CP JW NA HU)
  match = true
  letters = word.upcase.chars
  letters.each do |letter|
    blocks.each do |block|
      if block.include?(letter)
        blocks.reject!{|item| item == block}
        match = true
        break
      end
      match = false
    end
  end
  match
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
