require 'minitest/autorun'
require_relative '6-1' 

class MyProgramTest < MiniTest::Unit::TestCase
  def test_eps2
    assert_equal "Кол-во итераций при е=0.001: 4001. Длина кривой: 9.076577554877774", solve(0,4,0.001)
  end
  def test_eps1
    assert_equal "Кол-во итераций при е=0.01: 401. Длина кривой: 9.105042246306255", solve(0,4,0.01)
  end
end