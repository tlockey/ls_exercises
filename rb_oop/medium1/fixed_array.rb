class FixedArray
  def initialize(size)
    @size = size
    @array = [nil] * 5
  end
  
  def [](idx)
    idx >= @size ? (raise IndexError) : @array[idx]
  end
  
  def to_a
    @array.clone
  end
  
  def []=(idx, element)
     idx >= @size ? (raise IndexError) : @array[idx] = element
  end
  
  def to_s
    "[#{@array.map do |element|
      case element
      when NilClass then "nil"
      when String then "\"#{element}\""
      else element
      end 
      end.join(', ')}]"
    
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end
