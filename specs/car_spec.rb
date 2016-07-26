require "minitest/autorun"
require "minitest/rg"
require "pry-byebug"
require_relative "../car.rb"

class TestCar < MiniTest::Test

  def setup
    @lambo = Car.new
  end

  def test_car_speed
    assert_equal(0, @lambo.speed)
  end

  def test_car_fuel
    assert_equal(100, @lambo.fuel)
  end

  def test_accelerate
    @lambo.accelerate
    assert_equal(10, @lambo.speed)
    assert_equal(95, @lambo.fuel)
  end

  def test_brakes
    @lambo.accelerate
    @lambo.accelerate
    @lambo.brake
    # @lambo.accelerate.accelerate.accelerate
    assert_equal(10, @lambo.speed)
  end 

end