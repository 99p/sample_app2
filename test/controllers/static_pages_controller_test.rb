require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "rootがhomeとしてGETできる事" do
    get root_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "aboutがGETできる事" do
    get about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "contactがGETできる事" do
    get contact_url
    assert_response :success
  end

  test "contactのtitleが正しい事" do
    get contact_url
    assert_select "title", "Contact | #{@base_title}"
  end

end
