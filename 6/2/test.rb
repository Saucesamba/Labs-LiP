require 'minitest/autorun'
require_relative '6-2' 

class MyProgramTest < Minitest::Test
  def test_result
    enumerator = solve(0, 4, 1e-3)
    last_result = nil

    enumerator.each do |result|
      last_result = result
    end

    assert_equal 9.076577554877774, last_result[:length]
  end
end