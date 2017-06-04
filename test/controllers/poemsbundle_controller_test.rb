require 'test_helper'

class PoemsbundleControllerTest < ActionController::TestCase
  test "should get install" do
    get :install
    assert_response :success
  end

end
