require 'test_helper'

class CartsitemsControllerTest < ActionController::TestCase
  setup do
    @cartsitem = cartsitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartsitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartsitem" do
    assert_difference('Cartsitem.count') do
      post :create, cartsitem: { amount: @cartsitem.amount, cart_id: @cartsitem.cart_id, fruit_id: @cartsitem.fruit_id, item: @cartsitem.item, quantity: @cartsitem.quantity, user_id: @cartsitem.user_id, vegetable_id: @cartsitem.vegetable_id }
    end

    assert_redirected_to cartsitem_path(assigns(:cartsitem))
  end

  test "should show cartsitem" do
    get :show, id: @cartsitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartsitem
    assert_response :success
  end

  test "should update cartsitem" do
    patch :update, id: @cartsitem, cartsitem: { amount: @cartsitem.amount, cart_id: @cartsitem.cart_id, fruit_id: @cartsitem.fruit_id, item: @cartsitem.item, quantity: @cartsitem.quantity, user_id: @cartsitem.user_id, vegetable_id: @cartsitem.vegetable_id }
    assert_redirected_to cartsitem_path(assigns(:cartsitem))
  end

  test "should destroy cartsitem" do
    assert_difference('Cartsitem.count', -1) do
      delete :destroy, id: @cartsitem
    end

    assert_redirected_to cartsitems_path
  end
end
