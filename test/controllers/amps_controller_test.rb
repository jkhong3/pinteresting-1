require 'test_helper'

class AmpsControllerTest < ActionController::TestCase
  setup do
    @amp = amps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amp" do
    assert_difference('Amp.count') do
      post :create, amp: {  }
    end

    assert_redirected_to amp_path(assigns(:amp))
  end

  test "should show amp" do
    get :show, id: @amp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amp
    assert_response :success
  end

  test "should update amp" do
    patch :update, id: @amp, amp: {  }
    assert_redirected_to amp_path(assigns(:amp))
  end

  test "should destroy amp" do
    assert_difference('Amp.count', -1) do
      delete :destroy, id: @amp
    end

    assert_redirected_to amps_path
  end
end
