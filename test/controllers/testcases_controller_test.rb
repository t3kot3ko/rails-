require 'test_helper'

class TestcasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testcase = testcases(:one)
  end

  test "should get index" do
    get testcases_url, as: :json
    assert_response :success
  end

  test "should create testcase" do
    assert_difference('Testcase.count') do
      post testcases_url, params: { testcase: { description: @testcase.description, expected_result: @testcase.expected_result, identifier: @testcase.identifier, postcondition: @testcase.postcondition, precondition: @testcase.precondition, step: @testcase.step, title: @testcase.title } }, as: :json
    end

    assert_response 201
  end

  test "should show testcase" do
    get testcase_url(@testcase), as: :json
    assert_response :success
  end

  test "should update testcase" do
    patch testcase_url(@testcase), params: { testcase: { description: @testcase.description, expected_result: @testcase.expected_result, identifier: @testcase.identifier, postcondition: @testcase.postcondition, precondition: @testcase.precondition, step: @testcase.step, title: @testcase.title } }, as: :json
    assert_response 200
  end

  test "should destroy testcase" do
    assert_difference('Testcase.count', -1) do
      delete testcase_url(@testcase), as: :json
    end

    assert_response 204
  end
end
