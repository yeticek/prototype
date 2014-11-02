require 'test_helper'

class OdborsControllerTest < ActionController::TestCase
  setup do
    @odbor = odbors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odbors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odbor" do
    assert_difference('Odbor.count') do
      post :create, odbor: { cislo: @odbor.cislo, nazov: @odbor.nazov }
    end

    assert_redirected_to odbor_path(assigns(:odbor))
  end

  test "should show odbor" do
    get :show, id: @odbor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odbor
    assert_response :success
  end

  test "should update odbor" do
    patch :update, id: @odbor, odbor: { cislo: @odbor.cislo, nazov: @odbor.nazov }
    assert_redirected_to odbor_path(assigns(:odbor))
  end

  test "should destroy odbor" do
    assert_difference('Odbor.count', -1) do
      delete :destroy, id: @odbor
    end

    assert_redirected_to odbors_path
  end
end
