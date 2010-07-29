require 'test_helper'

class MusiciansControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musicians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musician" do
    assert_difference('Musician.count') do
      post :create, :musician => { }
    end

    assert_redirected_to musician_path(assigns(:musician))
  end

  test "should show musician" do
    get :show, :id => musicians(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => musicians(:one).to_param
    assert_response :success
  end

  test "should update musician" do
    put :update, :id => musicians(:one).to_param, :musician => { }
    assert_redirected_to musician_path(assigns(:musician))
  end

  test "should destroy musician" do
    assert_difference('Musician.count', -1) do
      delete :destroy, :id => musicians(:one).to_param
    end

    assert_redirected_to musicians_path
  end
end
