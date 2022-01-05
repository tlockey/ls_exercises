=begin
same as before but now any matrix with at least 1 row and 1 column

2 represents the number of indexes
[1, 2, 3, 4]
1
2
3
4
=end

def transpose(matrix)
  new_matrix = []
  0.upto(matrix[0].size - 1) do |idx|
    new_row = []
    matrix.each do |row| #array
     new_row << row[idx]
    end
    new_matrix << new_row
  end
  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
