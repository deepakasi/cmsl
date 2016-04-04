require 'test_helper'

class Login1sControllerTest < ActionController::TestCase
  setup do
    @login1 = login1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login1" do
    assert_difference('Login1.count') do
      post :create, login1: { CompanyName: @login1.CompanyName, Email: @login1.Email, EscalationLevel: @login1.EscalationLevel, Phone: @login1.Phone, password: 'secret', password_confirmation: 'secret' }
    end

    assert_redirected_to login1_path(assigns(:login1))
  end

  test "should show login1" do
    get :show, id: @login1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login1
    assert_response :success
  end

  test "should update login1" do
    patch :update, id: @login1, login1: { CompanyName: @login1.CompanyName, Email: @login1.Email, EscalationLevel: @login1.EscalationLevel, Phone: @login1.Phone, password: 'secret', password_confirmation: 'secret' }
    assert_redirected_to login1_path(assigns(:login1))
  end

  test "should destroy login1" do
    assert_difference('Login1.count', -1) do
      delete :destroy, id: @login1
    end

    assert_redirected_to login1s_path
  end
end
