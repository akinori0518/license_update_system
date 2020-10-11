require 'test_helper'

class AdderessesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get adderesses_new_url
    assert_response :success
  end

end
