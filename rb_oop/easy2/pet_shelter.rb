# pet
# owner
# shelter -> adopt (owner, pet); print_adoptions

class Pet
  def initialize(kind, name)
    @kind = kind
    @name = name
  end

  def to_s
    "a #{@kind} named #{@name}"
  end
end

class Owner
  attr_reader :name
  attr_accessor :number_of_pets
  def initialize(name)
    @name = name
    @number_of_pets = 0
  end
  def to_s
    @name
  end
end

class Shelter
    def initialize
      @adoptions = Hash.new([])
    end

    def adopt(owner, pet) #owner object, and a #pet object
      @adoptions[owner] += [pet] 
      owner.number_of_pets += 1
    end

    def print_adoptions
      @adoptions.each do |owner, pets|
        puts "#{owner} has adopted the following pets:"
        pets.each do |pet|
          puts pet
        end
        puts ""
      end
    end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions


=begin
Expected Output:
P Hanson has adopted the following pets:
a cat named Butterscotch
a cat named Pudding
a bearded dragon named Darwin

B Holmes has adopted the following pets:
a dog named Molly
a parakeet named Sweetie Pie
a dog named Kennedy
a fish named Chester
=end

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
