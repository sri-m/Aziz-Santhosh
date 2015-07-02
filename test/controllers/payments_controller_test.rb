require 'test_helper'

class PaymentsControllerTest < ActionController::TestCase
  test "should get our_payment" do
    get :our_payment
    assert_response :success
  end

end
