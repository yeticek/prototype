require 'test_helper'

class ObsahsControllerTest < ActionController::TestCase
  setup do
    @obsah = obsahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obsahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obsah" do
    assert_difference('Obsah.count') do
      post :create, obsah: { nazov_obsahu: @obsah.nazov_obsahu, pouzivatel: @obsah.pouzivatel, priradene_obory: @obsah.priradene_obory, priradene_profesie: @obsah.priradene_profesie, vzdelavaci_obsah: @obsah.vzdelavaci_obsah }
    end

    assert_redirected_to obsah_path(assigns(:obsah))
  end

  test "should show obsah" do
    get :show, id: @obsah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obsah
    assert_response :success
  end

  test "should update obsah" do
    patch :update, id: @obsah, obsah: { nazov_obsahu: @obsah.nazov_obsahu, pouzivatel: @obsah.pouzivatel, priradene_obory: @obsah.priradene_obory, priradene_profesie: @obsah.priradene_profesie, vzdelavaci_obsah: @obsah.vzdelavaci_obsah }
    assert_redirected_to obsah_path(assigns(:obsah))
  end

  test "should destroy obsah" do
    assert_difference('Obsah.count', -1) do
      delete :destroy, id: @obsah
    end

    assert_redirected_to obsahs_path
  end
end
