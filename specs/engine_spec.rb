require "minitest/autorun"
require "minitest/rg"
require_relative "../engine.rb"

class TestEngine < MiniTest::Test

  def setup
    @engine = Engine.new(25, 10)
  end

  def test_acceleration
    assert_equal(25, @engine.acceleration)
  end

  def test_fuel_consumption
    assert_equal(10, @engine.fuel_consumption)
  end
  
end