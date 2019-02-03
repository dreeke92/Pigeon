require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get settings" do
    get user_settings_url
    assert_response :success
  end

end
