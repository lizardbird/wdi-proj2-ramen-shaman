require 'test_helper'

class BowlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bowl = bowls(:one)
  end

  test "should get index" do
    get bowls_url
    assert_response :success
  end

  test "should get new" do
    get new_bowl_url
    assert_response :success
  end

  test "should create bowl" do
    assert_difference('bowl.count') do
      post bowls_url, params: { bowl: {  } }
    end

    assert_redirected_to bowl_url(bowl.last)
  end

  test "should show bowl" do
    get bowl_url(@bowl)
    assert_response :success
  end

  test "should get edit" do
    get edit_bowl_url(@bowl)
    assert_response :success
  end

  test "should update bowl" do
    patch bowl_url(@bowl), params: { bowl: {  } }
    assert_redirected_to bowl_url(@bowl)
  end

  test "should destroy bowl" do
    assert_difference('bowl.count', -1) do
      delete bowl_url(@bowl)
    end

    assert_redirected_to bowls_url
  end
end
