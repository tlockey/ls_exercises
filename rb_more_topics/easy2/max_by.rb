def max_by(array)
  return nil if array.empty?
  largest_el = array[0]
  largest_result = yield(largest_el)
  array[1..-1].each do |el|
    contender = yield(el)
    if contender > largest_result
      largest_el = el
      largest_result = contender
    end
  end
  largest_el
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
