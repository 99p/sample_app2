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

  test "should get mild" do
    get my_pages_mild_url
    assert_response :success
    assert_select "title", "Mild | Ruby on Rails Tutorial Sample App"
  end

end
