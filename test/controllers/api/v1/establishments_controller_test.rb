require 'test_helper'

class Api::V1::EstablishmentsControllerTest < ActionController::TestCase
  setup do
    @api_v1_establishment = api_v1_establishments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_establishments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_establishment" do
    assert_difference('Api::V1::Establishment.count') do
      post :create, api_v1_establishment: {  }
    end

    assert_redirected_to api_v1_establishment_path(assigns(:api_v1_establishment))
  end

  test "should show api_v1_establishment" do
    get :show, id: @api_v1_establishment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_establishment
    assert_response :success
  end

  test "should update api_v1_establishment" do
    patch :update, id: @api_v1_establishment, api_v1_establishment: {  }
    assert_redirected_to api_v1_establishment_path(assigns(:api_v1_establishment))
  end

  test "should destroy api_v1_establishment" do
    assert_difference('Api::V1::Establishment.count', -1) do
      delete :destroy, id: @api_v1_establishment
    end

    assert_redirected_to api_v1_establishments_path
  end
end
