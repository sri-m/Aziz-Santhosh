require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get my_page" do
    get :my_page
    assert_response :success
  end

end
