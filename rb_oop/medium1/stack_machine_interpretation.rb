=begin
problem: Create a mini stack and register
input: a string of commands, some of which may be erroneous
output: the value in the register

rules:
- eval is the instance method that evaluates the args
- commands will be input as a string, and separated by spaces
- invalid commands should throw an error

Stack Machine Rules:
- The register holds the 'current value'
- The register is not part of the stack
- The stack can be implemented as an array
- Operations that require 2 values pop the topmost item from the stack
  and perform the opation using the popped value and the register value

Stack Looks Like:
[--] most recent item
[--] 
[--] oldest item

or in array form:
[oldest_item, _______, most recent item]

nouns:
- register
- stack
- error
- string

verbs:
- push to stack
- place value in register
- storing result
- pop value
- multiply, add, subtract, divide
- print

=end
class MinilangError < StandardError
  def wrong_command(command)
    puts "Invalid token: #{command}"
  end
end

class Minilang
  VALID_COMMANDS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  attr_accessor :stack, :register
  def initialize(commands)
    @stack = []
    @register = 0
    @commands = commands.split
  end

  def eval
    @commands.each do |command|
      if number?(command)
        place(command.to_i)
        next
      else
        raise NoMethodError.new("Invalid token: #{command}") unless valid?(command)
        self.send command.downcase
      end
    end
  end

  def valid?(command)
    VALID_COMMANDS.include?(command)
  end

  def number?(str)
    str =~ /\A[-+]?\d+\z/
  end

  def place(n)
    @register = n
  end

  def push
    @stack << @register
    # pushes register value on to the stack, leave the value
    # in the register
  end

  def add
    @register = @stack.pop + @register
    # pops a value from the stack and adds it to the register
    # value, storing result in register
  end

  def sub
    @register -= @stack.pop
    # pops value from the stack and subtracts it from the register
    # value, storing the result in the register
  end

  def mult
    @register *= @stack.pop
    # pops value from the stack and multiplies it by the register
    # value, storing result in register
  end

  def div
    @register /= @stack.pop
    # pops a value from the stack and divides it into the register value,
    # storing the integer remainder of the division in the register
  end

  def mod 
    @register %= @stack.pop
    # pops a value from the stack and divides it into the register value
    # storing the integer remainder of the division in the register
  end

  def pop
    @register = @stack.pop
    # remove the topmost item from the stack and place in register
    
  end

  def print
    puts register
  end
  rescue NoMethodError
    MinilangError.wrong_command(command)
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
