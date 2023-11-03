require 'minitest/autorun'
require_relative '6-1' 

class MyProgramTest < MiniTest::Unit::TestCase
  def test_eps2
    my_mas=[0.001,4001,9.076577554877774]
    assert_equal my_mas, solve(0,4,0.001)
  end
  def test_eps1
    my_mas=[0.01,401,9.105042246306255]
    assert_equal my_mas, solve(0,4,0.01)
  end
end