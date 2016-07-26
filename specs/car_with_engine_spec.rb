require "minitest/autorun"
require "minitest/rg"
require_relative "../car_with_engine.rb"
require_relative "../engine.rb"

class TestCarWithEngine < MiniTest::Test

  def setup
    @diesel = Engine.new(10, 5)
    @turbo = Engine.new(25, 10)
    @honda = Car.new("Honda Civic", @diesel)
    @lambo = Car.new("Lamborghini Murcielago", @turbo)
  end

  def test_car_has_name
    assert_equal("Lamborghini Murcielago", @lambo.name)
  end

  def test_acceleration
    @honda.accelerate
    assert_equal(10, @honda.speed)
    assert_equal(95, @honda.fuel)
  end

  def test_brakes
    @lambo.accelerate
    @lambo.accelerate
    @lambo.brake
    assert_equal(40, @lambo.speed)
  end

end