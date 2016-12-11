require 'test_helper'

class ExecutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @executor = executors(:one)
  end

  test "should get index" do
    get executors_url, as: :json
    assert_response :success
  end

  test "should create executor" do
    assert_difference('Executor.count') do
      post executors_url, params: { executor: { name: @executor.name } }, as: :json
    end

    assert_response 201
  end

  test "should show executor" do
    get executor_url(@executor), as: :json
    assert_response :success
  end

  test "should update executor" do
    patch executor_url(@executor), params: { executor: { name: @executor.name } }, as: :json
    assert_response 200
  end

  test "should destroy executor" do
    assert_difference('Executor.count', -1) do
      delete executor_url(@executor), as: :json
    end

    assert_response 204
  end
end
