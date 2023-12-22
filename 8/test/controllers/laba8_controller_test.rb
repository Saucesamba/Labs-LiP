# test/controllers/laba8_controller_test.rb
require 'test_helper'

class Laba8ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get laba8_index_url
    assert_response :success
  end

  test "should calculate mersennes" do
    post laba8_calculate_url, params: { n: 10 }
    assert_response :success
    assert_template :calculate
    assert_not_nil assigns(:mersennes)
    assert_not_nil assigns(:count)
  end

  test "should show error for invalid input" do
    post laba8_calculate_url, params: { n: "invalid" }
    assert_response :success
    assert_template :index
    assert_not_nil flash[:alert]
  end
end
