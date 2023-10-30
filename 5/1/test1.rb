require 'minitest/autorun'
require_relative '5-1' 

class MyProgramTest < MiniTest::Unit::TestCase
  def test_non_digit
    assert_equal "Введите число!", func("k")
  end
  def test_division_by_zero
    assert_equal "Деление на 0!", func(5**(1/3))
  end
end