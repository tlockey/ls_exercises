=begin
input: an encrypted name 
output: a decrypted name 

rules:
- each letter is replaced by the letter 13 letters down
A -> N (Don't include A in counting)

steps: 
- deal only with lowercase first: 
- start with the alphabet in order
- rotate the alphabet 13 times (take the first letter, and put it at the end)
- iterate over the given name 
- break into characters
- for each character, find it's index in the regular alphabet 
- replace it with the character at the index of the new alphabet 

=end
def rotate(arr, n)
  arr = arr.clone
  n.times do 
    arr << arr.shift
  end
  arr
end

ALPHA = ('a'..'z').to_a
ROT13 = rotate(ALPHA, 13)

def unrot13(name)
  name.chars.map do |char|
    ALPHA.include?(char.downcase) ? get_char(char) : char
  end.join
end

def get_char(given)
  upcase_it = given.upcase == given # true if given was upcased
  given = given.downcase # normalize input
  index = get_index(given)
  upcase_it ? ROT13[index].upcase : ROT13[index]
end

def get_index(given)
  ALPHA.each_with_index do |char, idx|
    return idx if char == given
  end
end

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

puts(ENCRYPTED_PIONEERS.map do |pioneer|
  unrot13(pioneer)
end)
