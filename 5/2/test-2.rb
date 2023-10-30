require 'minitest/autorun'
require_relative '5-2' 

class MyProgramTest < MiniTest::Unit::TestCase
  def test_delete
    names = ["Губин", "Архипов", "Васюков", "Донской", "Светов"]
    salaries = [5000, 5500, 4900, 5300, 5400]
    delete_pers( salaries,names)
    assert_equal ["Губин", "Архипов", "Донской", "Светов"], names
    assert_equal [5000, 5500, 5300, 5400], salaries
  end
  def test_second_max
    salaries = [5000, 5500, 4900, 5300, 5400]
    result = find_second_maximum(salaries)
    assert_equal 5400, result
  end
  def test_sr_arif
    salaries = [5000, 5500, 4900, 5300, 5400]
    result = sr_arif(salaries)
    assert_equal 5220, result
  end
  def test_min_otkl
    salaries = [5000, 5500, 4900, 5300, 5400]
    result = min_otklon(salaries)
    assert_equal 3, result
  end
end