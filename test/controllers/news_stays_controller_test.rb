require 'test_helper'

class NewsStaysControllerTest < ActionController::TestCase
  setup do
    @news_stay = news_stays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_stays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_stay" do
    assert_difference('NewsStay.count') do
      post :create, news_stay: { description: @news_stay.description, image: @news_stay.image, title: @news_stay.title, user_id: @news_stay.user_id }
    end

    assert_redirected_to news_stay_path(assigns(:news_stay))
  end

  test "should show news_stay" do
    get :show, id: @news_stay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_stay
    assert_response :success
  end

  test "should update news_stay" do
    patch :update, id: @news_stay, news_stay: { description: @news_stay.description, image: @news_stay.image, title: @news_stay.title, user_id: @news_stay.user_id }
    assert_redirected_to news_stay_path(assigns(:news_stay))
  end

  test "should destroy news_stay" do
    assert_difference('NewsStay.count', -1) do
      delete :destroy, id: @news_stay
    end

    assert_redirected_to news_stays_path
  end
end
