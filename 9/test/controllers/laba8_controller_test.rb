require "test_helper"

class Laba8ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get laba8_index_url
    assert_response :success
  end

  test "should get calculate" do
    get laba8_calculate_url
    assert_response :success
  end
end
