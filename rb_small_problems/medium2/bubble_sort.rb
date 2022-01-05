=begin
input: an array
output: the same array, sorted using the bubble sort algorithm

- a bubble sort
  - iterates over array
  - takes each part of consecutive elements arr[0], arr[1]
  - if the first > second, swaps the two
  - then take the next two consecutive elements arr[1], arr[2]
  - continue until last two
  - if a swap was made during this iteration
  - iterate again
  - break if no swaps were made

=end

def bubble_sort!(arr)
  loop do # start sort again
    idx = 0
    swapped = false
    loop do 
      if arr[idx] > arr[idx + 1]
        swapped = true
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      end
      break if idx == (arr.size - 2)
      idx += 1
    end
    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
