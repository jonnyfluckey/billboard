require 'test_helper'

class ChartDatumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chart_datums_index_url
    assert_response :success
  end

  test "should get show" do
    get chart_datums_show_url
    assert_response :success
  end

  test "should get new" do
    get chart_datums_new_url
    assert_response :success
  end

  test "should get edit" do
    get chart_datums_edit_url
    assert_response :success
  end

end
