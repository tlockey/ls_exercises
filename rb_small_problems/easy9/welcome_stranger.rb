=begin
input: an array of words that make up a person's name
       a hash with title and occupation
output: a greeting with full name, title and occupation
=end

def greetings(name, job)
  puts "=> Hello #{name.join(' ')}, " \
        "nice to have a #{job[:title]} #{job[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
