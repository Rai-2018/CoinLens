require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "CoinLens"
  end
=begin
  test "should get root" do
    get pages_home_url
    assert_response :success
  end
=end
  test "should get register" do
    get register_path
    assert_response :success
    assert_select "title", "Register | #{@base_title}"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get features" do
    get features_path
    assert_response :success
    assert_select "title", "Features | #{@base_title}"
  end

  test "should get faq" do
    get faq_path
    assert_response :success
    assert_select "title", "FAQ | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get login" do
    get login_path
    assert_response :success
    assert_select "title", "Login | #{@base_title}"
  end

  test "should get news" do
    get news_path
    assert_response :success
    assert_select "title", "News | #{@base_title}"
  end
end
