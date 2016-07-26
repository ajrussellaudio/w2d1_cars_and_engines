

class Car

  attr_reader :name, :speed, :fuel

  def initialize(name, engine)
    @name = name
    @engine = engine
    @speed = 0
    @fuel = 100
    @brakes_power = 10
  end

  def accelerate()
    @speed += @engine.acceleration
    @fuel -= @engine.fuel_consumption
  end

  def brake()
    @speed -= @brakes_power
    @speed = 0 if @speed < 0
  end

end