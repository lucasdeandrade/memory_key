require "test_helper"

class PasswordManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @password_manager = password_managers(:one)
  end

  test "should get index" do
    get password_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_password_manager_url
    assert_response :success
  end

  test "should create password_manager" do
    assert_difference('PasswordManager.count') do
      post password_managers_url, params: { password_manager: { name: @password_manager.name, password: @password_manager.password } }
    end

    assert_redirected_to password_manager_url(PasswordManager.last)
  end

  test "should show password_manager" do
    get password_manager_url(@password_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_password_manager_url(@password_manager)
    assert_response :success
  end

  test "should update password_manager" do
    patch password_manager_url(@password_manager), params: { password_manager: { name: @password_manager.name, password: @password_manager.password } }
    assert_redirected_to password_manager_url(@password_manager)
  end

  test "should destroy password_manager" do
    assert_difference('PasswordManager.count', -1) do
      delete password_manager_url(@password_manager)
    end

    assert_redirected_to password_managers_url
  end
end
