require 'test_helper'

class Top100ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get top100_index_url
    assert_response :success
  end

  test "should get show" do
    get top100_show_url
    assert_response :success
  end

  test "should get new" do
    get top100_new_url
    assert_response :success
  end

  test "should get edit" do
    get top100_edit_url
    assert_response :success
  end

end
