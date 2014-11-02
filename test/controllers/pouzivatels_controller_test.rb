require 'test_helper'

class PouzivatelsControllerTest < ActionController::TestCase
  setup do
    @pouzivatel = pouzivatels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pouzivatels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pouzivatel" do
    assert_difference('Pouzivatel.count') do
      post :create, pouzivatel: { heslo: @pouzivatel.heslo, nick: @pouzivatel.nick }
    end

    assert_redirected_to pouzivatel_path(assigns(:pouzivatel))
  end

  test "should show pouzivatel" do
    get :show, id: @pouzivatel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pouzivatel
    assert_response :success
  end

  test "should update pouzivatel" do
    patch :update, id: @pouzivatel, pouzivatel: { heslo: @pouzivatel.heslo, nick: @pouzivatel.nick }
    assert_redirected_to pouzivatel_path(assigns(:pouzivatel))
  end

  test "should destroy pouzivatel" do
    assert_difference('Pouzivatel.count', -1) do
      delete :destroy, id: @pouzivatel
    end

    assert_redirected_to pouzivatels_path
  end
end
