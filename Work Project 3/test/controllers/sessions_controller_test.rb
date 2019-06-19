require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get login_page" do
    get sessions_login_page_url
    assert_response :success
  end

  test "should get signup_page" do
    get sessions_signup_page_url
    assert_response :success
  end

  test "should get logout" do
    get sessions_logout_url
    assert_response :success
  end

  test "should get admin_page" do
    get sessions_admin_page_url
    assert_response :success
  end

end
