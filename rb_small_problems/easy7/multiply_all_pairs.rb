=begin
input: 2 arrays of integers
output: new array, product of every pair that can be formed between each of the
        arrays, sorted from least to greatest
=end

def multiply_all_pairs(arr1,arr2)
  all_multiples = []
  arr1.each do |int1|
    arr2.each do |int2|
      all_multiples << (int1 * int2)
    end
  end
  all_multiples.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
