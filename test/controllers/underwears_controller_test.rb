require "test_helper"

class UnderwearsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get underwears_index_url
    assert_response :success
  end

  test "should get show" do
    get underwears_show_url
    assert_response :success
  end

  test "should get edit" do
    get underwears_edit_url
    assert_response :success
  end
end
