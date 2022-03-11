# class Banner
#   def initialize(message, size=message.size)
#     @message = message
#     size_error('small') if size < @message.size
#     size_error('big') if size > 80
#     @size = size
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   DASH = '-'
#   SPACE = ' '

#   def size_error(state)
#     case state
#     when 'small'
#       loop do
#         puts "Size too small. Enter a size larger than #{@message.size}."
#         @size = gets.chomp.to_i
#         break if @size >= @message.size
#       end
#     when 'big'
#       loop do
#         puts "Size too big. Enter a size smaller than 80."
#         @size = gets.chomp.to_i
#         break if @size <= 80
#       end
#     end
#   end

#   def horizontal_rule
#     "+-#{DASH * @size}-+"
#   end

#   def empty_line
#     "| #{SPACE * @size} |"
#   end

#   def message_line
#     "| #{@message.center(@size)} |"
#   end
# end

# banner = Banner.new('To boldly go where no one has gone before.', 90)
# puts banner

# banner = Banner.new('')
# puts banner

## BANNER CLASS 2.0:

require 'pry'

class Banner #modify to accept multiple message lines

  def initialize(message, size=nil)
    if message.is_a?(Array)
      @message = message
    else
      @message = [message]
    end
    @size = size == nil ? message.map{|str| str.size}.max : size
    # binding.pry
    size_error('small') if size < @message.size
    size_error('big') if size > 80
  end

  def to_s
    ([horizontal_rule, empty_line] + 
      message_line + 
      [empty_line, horizontal_rule]).join("\n")
  end

  private

  DASH = '-'
  SPACE = ' '

  def size_error(state)
    case state
    when 'small'
      loop do
        puts "Size too small. Enter a size larger than #{@message.size}."
        @size = gets.chomp.to_i
        break if @size >= @message.size
      end
    when 'big'
      loop do
        puts "Size too big. Enter a size smaller than 80."
        @size = gets.chomp.to_i
        break if @size <= 80
      end
    end
  end

  def horizontal_rule
    "+-#{DASH * @size}-+"
  end

  def empty_line
    "| #{SPACE * @size} |"
  end

  def message_line #return an array of lines
    @message.map do |line|
      "| #{line.center(@size)} |"
    end
  end
end

puts Banner.new(["SCOREBOARD", "Jane \t 2", "Bobby \t 2"], 40)
puts ""
