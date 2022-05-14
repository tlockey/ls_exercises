def compute
  return 'Does not compute.' unless block_given?
  yield
end
p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

# further exploration:

def compute(n)
  return 'Does not compute.' unless block_given?
  yield(n)
end
# argument not used
p compute(4) { |n| 5 + 3 } == 8

# argument used
p compute('a') { |n| n + 'b' } == 'ab'

# no-block call
p compute('x') == 'Does not compute.'
