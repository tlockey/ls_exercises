def zip(arr1, arr2)
  counter = 0
  big_arr = []
  loop do 
    big_arr << [arr1[counter], arr2[counter]]
    counter += 1
    break if counter == arr1.size
  end
  big_arr
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
