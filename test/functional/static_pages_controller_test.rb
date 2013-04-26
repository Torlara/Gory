require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get peaks" do
    get :peaks
    assert_response :success
  end

  test "should get archive" do
    get :archive
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get interviews" do
    get :interviews
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
