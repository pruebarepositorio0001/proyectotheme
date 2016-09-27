require 'test_helper'

class KaraokesControllerTest < ActionController::TestCase
  setup do
    @karaoke = karaokes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:karaokes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create karaoke" do
    assert_difference('Karaoke.count') do
      post :create, karaoke: { date: @karaoke.date, score: @karaoke.score, song_id: @karaoke.song_id, user_id: @karaoke.user_id }
    end

    assert_redirected_to karaoke_path(assigns(:karaoke))
  end

  test "should show karaoke" do
    get :show, id: @karaoke
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @karaoke
    assert_response :success
  end

  test "should update karaoke" do
    patch :update, id: @karaoke, karaoke: { date: @karaoke.date, score: @karaoke.score, song_id: @karaoke.song_id, user_id: @karaoke.user_id }
    assert_redirected_to karaoke_path(assigns(:karaoke))
  end

  test "should destroy karaoke" do
    assert_difference('Karaoke.count', -1) do
      delete :destroy, id: @karaoke
    end

    assert_redirected_to karaokes_path
  end
end
