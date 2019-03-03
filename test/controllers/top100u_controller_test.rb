require 'test_helper'

class Top100uControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get top100u_index_url
    assert_response :success
  end

  test "should get show" do
    get top100u_show_url
    assert_response :success
  end

  test "should get new" do
    get top100u_new_url
    assert_response :success
  end

  test "should get edit" do
    get top100u_edit_url
    assert_response :success
  end

end
