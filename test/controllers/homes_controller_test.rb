require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get homes_top_url
    assert_response :success
  end

  test "should get about" do
    get homes_about_url
    assert_response :success
  end

  test "should get flow" do
    get homes_flow_url
    assert_response :success
  end

  test "should get photos" do
    get homes_photos_url
    assert_response :success
  end

  test "should get staffs" do
    get homes_staffs_url
    assert_response :success
  end

  test "should get login" do
    get homes_login_url
    assert_response :success
  end

  test "should get apply" do
    get homes_apply_url
    assert_response :success
  end

end
