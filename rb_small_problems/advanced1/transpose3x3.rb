=begin
input: a 3x3 matrix (nested array)
output: a new matrix, but transposed, so rows and columns are exchanged

rules:
- new matrix

matrix = [
  [1, 5, 8]
  [4, 7, 2]
  [3, 9, 6]
]

transposed = [
  [1, 4, 3]
  [5, 7, 8]
  [8, 2, 6]
]

oh this seems pretty straightforward
have a counter, from 0 to 2
- iterate over each array, place the first item in a new array
- place the second item of each in a new array
- place the third item of each in a new array

loop within a loop

=end

def transpose(matrix)
  new_matrix = []
  0.upto(2) do |idx|
    new_row = []
    matrix.each do |row| #array
     new_row << row[idx]
    end
    new_matrix << new_row
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
