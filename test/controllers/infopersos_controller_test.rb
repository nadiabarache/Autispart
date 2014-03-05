require 'test_helper'

class InfopersosControllerTest < ActionController::TestCase
  setup do
    @infoperso = infopersos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infopersos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create infoperso" do
    assert_difference('Infoperso.count') do
      post :create, infoperso: { age: @infoperso.age, departement: @infoperso.departement, pays: @infoperso.pays, pseudo: @infoperso.pseudo, sexe: @infoperso.sexe, ville: @infoperso.ville }
    end

    assert_redirected_to infoperso_path(assigns(:infoperso))
  end

  test "should show infoperso" do
    get :show, id: @infoperso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @infoperso
    assert_response :success
  end

  test "should update infoperso" do
    patch :update, id: @infoperso, infoperso: { age: @infoperso.age, departement: @infoperso.departement, pays: @infoperso.pays, pseudo: @infoperso.pseudo, sexe: @infoperso.sexe, ville: @infoperso.ville }
    assert_redirected_to infoperso_path(assigns(:infoperso))
  end

  test "should destroy infoperso" do
    assert_difference('Infoperso.count', -1) do
      delete :destroy, id: @infoperso
    end

    assert_redirected_to infopersos_path
  end
end
