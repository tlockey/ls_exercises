=begin
input: a string
output: 
stack -> array
register -> variable
- one main method: minilang(string)
  - break down the string
  - iterate over each commans
    - if integer -> push to register
    - if command, execute command
=end
#require 'pry'

def minilang(program)
  register = 0
  stack = []
  program.split.each do |command|
    case command
    when "PUSH"   then stack << register
    when "ADD"    then register += stack.pop
    when "SUB"    then register -= stack.pop
    when "MULT"   then register *= stack.pop
    when "DIV"    then register /= stack.pop
    when "MOD"    then register %= stack.pop
    when "POP"    then register = stack.pop
    when "PRINT"  then puts register
    else               register = command.to_i
    end 
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')
