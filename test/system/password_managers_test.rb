require "application_system_test_case"

class PasswordManagersTest < ApplicationSystemTestCase
  setup do
    @password_manager = password_managers(:one)
  end

  test "visiting the index" do
    visit password_managers_url
    assert_selector "h1", text: "Password Managers"
  end

  test "creating a Password manager" do
    visit password_managers_url
    click_on "New Password Manager"

    fill_in "Name", with: @password_manager.name
    fill_in "Password", with: @password_manager.password
    click_on "Create Password manager"

    assert_text "Password manager was successfully created"
    click_on "Back"
  end

  test "updating a Password manager" do
    visit password_managers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @password_manager.name
    fill_in "Password", with: @password_manager.password
    click_on "Update Password manager"

    assert_text "Password manager was successfully updated"
    click_on "Back"
  end

  test "destroying a Password manager" do
    visit password_managers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Password manager was successfully destroyed"
  end
end
