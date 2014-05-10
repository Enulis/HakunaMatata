require 'test_helper'

class SupplyItemsControllerTest < ActionController::TestCase
  setup do
    @supply_item = supply_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supply_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supply_item" do
    assert_difference('SupplyItem.count') do
      post :create, supply_item: { name: @supply_item.name, price: @supply_item.price }
    end

    assert_redirected_to supply_item_path(assigns(:supply_item))
  end

  test "should show supply_item" do
    get :show, id: @supply_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supply_item
    assert_response :success
  end

  test "should update supply_item" do
    patch :update, id: @supply_item, supply_item: { name: @supply_item.name, price: @supply_item.price }
    assert_redirected_to supply_item_path(assigns(:supply_item))
  end

  test "should destroy supply_item" do
    assert_difference('SupplyItem.count', -1) do
      delete :destroy, id: @supply_item
    end

    assert_redirected_to supply_items_path
  end
end
