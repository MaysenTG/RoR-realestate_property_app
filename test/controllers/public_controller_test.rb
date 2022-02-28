require "test_helper"

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_index_url
    assert_response :success
  end

  test "should get latest" do
    get public_latest_url
    assert_response :success
  end

  test "should get featured" do
    get public_featured_url
    assert_response :success
  end

  test "should get sale" do
    get public_sale_url
    assert_response :success
  end
end
