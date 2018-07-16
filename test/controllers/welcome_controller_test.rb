require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get users" do
    get welcome_users_url
    assert_response :success
  end

  test "should get products" do
    get welcome_products_url
    assert_response :success
  end

end
