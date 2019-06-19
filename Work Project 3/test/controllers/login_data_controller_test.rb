require 'test_helper'

class LoginDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @login_datum = login_data(:one)
  end

  test "should get index" do
    get login_data_url
    assert_response :success
  end

  test "should get new" do
    get new_login_datum_url
    assert_response :success
  end

  test "should create login_datum" do
    assert_difference('LoginDatum.count') do
      post login_data_url, params: { login_datum: { password: 'secret', password_confirmation: 'secret', username: @login_datum.username } }
    end

    assert_redirected_to login_datum_url(LoginDatum.last)
  end

  test "should show login_datum" do
    get login_datum_url(@login_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_login_datum_url(@login_datum)
    assert_response :success
  end

  test "should update login_datum" do
    patch login_datum_url(@login_datum), params: { login_datum: { password: 'secret', password_confirmation: 'secret', username: @login_datum.username } }
    assert_redirected_to login_datum_url(@login_datum)
  end

  test "should destroy login_datum" do
    assert_difference('LoginDatum.count', -1) do
      delete login_datum_url(@login_datum)
    end

    assert_redirected_to login_data_url
  end
end
