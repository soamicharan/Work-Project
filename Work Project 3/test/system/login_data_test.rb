require "application_system_test_case"

class LoginDataTest < ApplicationSystemTestCase
  setup do
    @login_datum = login_data(:one)
  end

  test "visiting the index" do
    visit login_data_url
    assert_selector "h1", text: "Login Data"
  end

  test "creating a Login datum" do
    visit login_data_url
    click_on "New Login Datum"

    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Username", with: @login_datum.username
    click_on "Create Login datum"

    assert_text "Login datum was successfully created"
    click_on "Back"
  end

  test "updating a Login datum" do
    visit login_data_url
    click_on "Edit", match: :first

    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Username", with: @login_datum.username
    click_on "Update Login datum"

    assert_text "Login datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Login datum" do
    visit login_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Login datum was successfully destroyed"
  end
end
