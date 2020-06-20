require 'test_helper'

class BeginPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get begin_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get begin_pages_help_url
    assert_response :success
  end

end
