require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  test "should get students" do
    get :students
    assert_response :success
  end

  test "should get faculty" do
    get :faculty
    assert_response :success
  end

end
