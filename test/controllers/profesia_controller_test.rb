require 'test_helper'

class ProfesiaControllerTest < ActionController::TestCase
  setup do
    @profesium = profesia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesium" do
    assert_difference('Profesium.count') do
      post :create, profesium: { nazov_profesie: @profesium.nazov_profesie, profesia_cislo: @profesium.profesia_cislo }
    end

    assert_redirected_to profesium_path(assigns(:profesium))
  end

  test "should show profesium" do
    get :show, id: @profesium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesium
    assert_response :success
  end

  test "should update profesium" do
    patch :update, id: @profesium, profesium: { nazov_profesie: @profesium.nazov_profesie, profesia_cislo: @profesium.profesia_cislo }
    assert_redirected_to profesium_path(assigns(:profesium))
  end

  test "should destroy profesium" do
    assert_difference('Profesium.count', -1) do
      delete :destroy, id: @profesium
    end

    assert_redirected_to profesia_path
  end
end
