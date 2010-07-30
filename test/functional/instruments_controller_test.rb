require 'test_helper'

class InstrumentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instruments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrument" do
    assert_difference('Instrument.count') do
      post :create, :instrument => { }
    end

    assert_redirected_to instrument_path(assigns(:instrument))
  end

  test "should show instrument" do
    get :show, :id => instruments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => instruments(:one).to_param
    assert_response :success
  end

  test "should update instrument" do
    put :update, :id => instruments(:one).to_param, :instrument => { }
    assert_redirected_to instrument_path(assigns(:instrument))
  end

  test "should destroy instrument" do
    assert_difference('Instrument.count', -1) do
      delete :destroy, :id => instruments(:one).to_param
    end

    assert_redirected_to instruments_path
  end
end
