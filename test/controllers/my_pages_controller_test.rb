require 'test_helper'

class MyPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get cool" do
    get my_pages_cool_url
    assert_response :success
  end

  test "should get hot" do
    get my_pages_hot_url
    assert_response :success
  end

end
