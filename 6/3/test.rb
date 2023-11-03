require 'minitest/autorun'
require_relative '6-3_block'

class MyProgramTest < Minitest::Test

  def test_func
    int1 = intprg_b(0, 2, 100) { |x| x * (x - 1) }
    assert_equal 0.6467999999999999, int1
  end
  
end