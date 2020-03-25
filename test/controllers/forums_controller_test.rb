require 'test_helper'

class ForumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forums_index_url
    assert_response :success
  end

  test "should get show" do
    get forums_show_url
    assert_response :success
  end

  test "should get new" do
    get forums_new_url
    assert_response :success
  end

  test "should get edit" do
    get forums_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get forums_destroy_url
    assert_response :success
  end

end
