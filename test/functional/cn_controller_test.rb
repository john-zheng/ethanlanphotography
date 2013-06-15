require 'test_helper'

class CnControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get work" do
    get :work
    assert_response :success
  end

  test "should get photo" do
    get :photo
    assert_response :success
  end

  test "should get video" do
    get :video
    assert_response :success
  end

  test "should get price" do
    get :price
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
