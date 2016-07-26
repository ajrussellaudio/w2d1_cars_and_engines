class Car

  attr_reader :speed, :fuel

  def initialize()
    @speed = 0
    @fuel = 100
  end

  def accelerate()
    @speed += 10
    @fuel -= 5
  end

  def brake()
    @speed -= 10
    @speed = 0 if @speed < 0
  end

end