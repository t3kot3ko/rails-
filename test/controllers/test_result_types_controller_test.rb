require 'test_helper'

class TestResultTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_result_type = test_result_types(:one)
  end

  test "should get index" do
    get test_result_types_url, as: :json
    assert_response :success
  end

  test "should create test_result_type" do
    assert_difference('TestResultType.count') do
      post test_result_types_url, params: { test_result_type: { color: @test_result_type.color, identifier: @test_result_type.identifier, title: @test_result_type.title } }, as: :json
    end

    assert_response 201
  end

  test "should show test_result_type" do
    get test_result_type_url(@test_result_type), as: :json
    assert_response :success
  end

  test "should update test_result_type" do
    patch test_result_type_url(@test_result_type), params: { test_result_type: { color: @test_result_type.color, identifier: @test_result_type.identifier, title: @test_result_type.title } }, as: :json
    assert_response 200
  end

  test "should destroy test_result_type" do
    assert_difference('TestResultType.count', -1) do
      delete test_result_type_url(@test_result_type), as: :json
    end

    assert_response 204
  end
end
