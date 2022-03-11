class Vehicle
  attr_reader :make, :model
  def initialize(make, model)
    @make = make
    @model = model
  end

  def wheels
    self.wheels
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  attr_reader :wheels
    def initialize(make, model)
      super
      @wheels = 4
    end
end

class Motorcycle < Vehicle
  attr_reader :wheels
    def initialize(make, model)
      super
      @wheels = 2
    end
end

class Truck < Vehicle
  attr_reader :payload, :wheels

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
    @wheels = 6
  end

end

tacoma = Truck.new('make', 'model', 'payload')
p tacoma.wheels
