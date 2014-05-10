require 'test_helper'

class EventItemListsControllerTest < ActionController::TestCase
  setup do
    @event_item_list = event_item_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_item_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_item_list" do
    assert_difference('EventItemList.count') do
      post :create, event_item_list: { count: @event_item_list.count, event: @event_item_list.event, supply_item: @event_item_list.supply_item }
    end

    assert_redirected_to event_item_list_path(assigns(:event_item_list))
  end

  test "should show event_item_list" do
    get :show, id: @event_item_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_item_list
    assert_response :success
  end

  test "should update event_item_list" do
    patch :update, id: @event_item_list, event_item_list: { count: @event_item_list.count, event: @event_item_list.event, supply_item: @event_item_list.supply_item }
    assert_redirected_to event_item_list_path(assigns(:event_item_list))
  end

  test "should destroy event_item_list" do
    assert_difference('EventItemList.count', -1) do
      delete :destroy, id: @event_item_list
    end

    assert_redirected_to event_item_lists_path
  end
end
