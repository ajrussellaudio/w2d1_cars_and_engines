class Engine

  attr_reader :acceleration, :fuel_consumption

  def initialize(accel, fuel)
    @acceleration = accel
    @fuel_consumption = fuel
  end

end