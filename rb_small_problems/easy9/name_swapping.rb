=begin
input: string: firstname lastname
output: lastname, firstname
=end

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
