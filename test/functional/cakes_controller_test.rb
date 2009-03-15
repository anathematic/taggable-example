require 'test_helper'

class CakesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cake" do
    assert_difference('Cake.count') do
      post :create, :cake => { }
    end

    assert_redirected_to cake_path(assigns(:cake))
  end

  test "should show cake" do
    get :show, :id => cakes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cakes(:one).to_param
    assert_response :success
  end

  test "should update cake" do
    put :update, :id => cakes(:one).to_param, :cake => { }
    assert_redirected_to cake_path(assigns(:cake))
  end

  test "should destroy cake" do
    assert_difference('Cake.count', -1) do
      delete :destroy, :id => cakes(:one).to_param
    end

    assert_redirected_to cakes_path
  end
end
