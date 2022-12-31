require "test_helper"

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get albums_index_url
    assert_response :success
  end

  test "should get view" do
    get albums_view_url
    assert_response :success
  end

  test "should get show" do
    get albums_show_url
    assert_response :success
  end

  test "should get form" do
    get albums_form_url
    assert_response :success
  end
end
