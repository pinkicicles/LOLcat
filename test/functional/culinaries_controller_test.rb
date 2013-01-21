require 'test_helper'

class CulinariesControllerTest < ActionController::TestCase
  setup do
    @culinary = culinaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:culinaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create culinary" do
    assert_difference('Culinary.count') do
      post :create, culinary: { Artist: @culinary.Artist, Dishes: @culinary.Dishes, Location: @culinary.Location, Name: @culinary.Name }
    end

    assert_redirected_to culinary_path(assigns(:culinary))
  end

  test "should show culinary" do
    get :show, id: @culinary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @culinary
    assert_response :success
  end

  test "should update culinary" do
    put :update, id: @culinary, culinary: { Artist: @culinary.Artist, Dishes: @culinary.Dishes, Location: @culinary.Location, Name: @culinary.Name }
    assert_redirected_to culinary_path(assigns(:culinary))
  end

  test "should destroy culinary" do
    assert_difference('Culinary.count', -1) do
      delete :destroy, id: @culinary
    end

    assert_redirected_to culinaries_path
  end
end
