class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new # creates a new object with a state of 'Hello'
puts Something.dupdata # 'ByeBye'
puts thing.dupdata # 'HelloHello'
