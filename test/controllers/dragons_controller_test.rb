require 'test_helper'

class DragonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dragon = dragons(:smaug)
  end

  test "should get index" do
    get dragons_url, as: :json
    assert_response :success
  end

  test "should create dragon" do
    assert_difference('Dragon.count') do
      post dragons_url, params: { dragon: { name: @dragon.name } }, as: :json
    end

    assert_response 201
  end

  test "should show dragon" do
    get dragon_url(@dragon), as: :json
    assert_response :success
  end

  test "should update dragon" do
    patch dragon_url(@dragon), params: { dragon: { name: @dragon.name } }, as: :json
    assert_response 200
  end

  test "should destroy dragon" do
    assert_difference('Dragon.count', -1) do
      delete dragon_url(@dragon), as: :json
    end

    assert_response 204
  end
end
