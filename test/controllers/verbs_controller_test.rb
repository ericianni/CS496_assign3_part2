require 'test_helper'

class VerbsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
