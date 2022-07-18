require "test_helper"

class ScanControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get scan_new_url
    assert_response :success
  end
end
