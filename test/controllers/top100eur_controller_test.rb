require 'test_helper'

class Top100eurControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get top100eur_index_url
    assert_response :success
  end

  test "should get show" do
    get top100eur_show_url
    assert_response :success
  end

  test "should get new" do
    get top100eur_new_url
    assert_response :success
  end

  test "should get edit" do
    get top100eur_edit_url
    assert_response :success
  end

end
