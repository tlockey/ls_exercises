module Walkable
  def walk
    puts "#{name} #{gait} foward"
  end
end

class Noble
include Walkable
  attr_reader :name, :title
  def initialize(name, title)
    @name = name
    @title = title
  end

  def walk
    puts "#{title} #{name} #{gait} foward"
  end

  private
  def gait
    "strut"
  end
end
class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"
