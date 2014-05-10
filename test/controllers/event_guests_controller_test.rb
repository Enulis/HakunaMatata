require 'test_helper'

class EventGuestsControllerTest < ActionController::TestCase
  setup do
    @event_guest = event_guests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_guests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_guest" do
    assert_difference('EventGuest.count') do
      post :create, event_guest: { integer: @event_guest.integer, integer: @event_guest.integer }
    end

    assert_redirected_to event_guest_path(assigns(:event_guest))
  end

  test "should show event_guest" do
    get :show, id: @event_guest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_guest
    assert_response :success
  end

  test "should update event_guest" do
    patch :update, id: @event_guest, event_guest: { integer: @event_guest.integer, integer: @event_guest.integer }
    assert_redirected_to event_guest_path(assigns(:event_guest))
  end

  test "should destroy event_guest" do
    assert_difference('EventGuest.count', -1) do
      delete :destroy, id: @event_guest
    end

    assert_redirected_to event_guests_path
  end
end
