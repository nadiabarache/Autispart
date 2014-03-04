require 'test_helper'

class PresentationControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get inscription" do
    get :inscription
    assert_response :success
  end

end
