require 'test_helper'

class Api::V1::MenusControllerTest < ActionController::TestCase
  setup do
    @api_v1_menu = api_v1_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_menu" do
    assert_difference('Api::V1::Menu.count') do
      post :create, api_v1_menu: {  }
    end

    assert_redirected_to api_v1_menu_path(assigns(:api_v1_menu))
  end

  test "should show api_v1_menu" do
    get :show, id: @api_v1_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_menu
    assert_response :success
  end

  test "should update api_v1_menu" do
    patch :update, id: @api_v1_menu, api_v1_menu: {  }
    assert_redirected_to api_v1_menu_path(assigns(:api_v1_menu))
  end

  test "should destroy api_v1_menu" do
    assert_difference('Api::V1::Menu.count', -1) do
      delete :destroy, id: @api_v1_menu
    end

    assert_redirected_to api_v1_menus_path
  end
end
