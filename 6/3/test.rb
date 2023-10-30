require 'minitest/autorun'
require_relative '6-3_block' 
class MyProgramTest < MiniTest::Unit::TestCase
  def test
    assert_equal 0, intprg_b(0, 2, 100) { |x| x * (x - 1) }
  end
end