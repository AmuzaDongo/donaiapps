require "test_helper"

class TestmonialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testmonial = testmonials(:one)
  end

  test "should get index" do
    get testmonials_url
    assert_response :success
  end

  test "should get new" do
    get new_testmonial_url
    assert_response :success
  end

  test "should create testmonial" do
    assert_difference("Testmonial.count") do
      post testmonials_url, params: { testmonial: { name: @testmonial.name, status: @testmonial.status, testmony: @testmonial.testmony, title: @testmonial.title } }
    end

    assert_redirected_to testmonial_url(Testmonial.last)
  end

  test "should show testmonial" do
    get testmonial_url(@testmonial)
    assert_response :success
  end

  test "should get edit" do
    get edit_testmonial_url(@testmonial)
    assert_response :success
  end

  test "should update testmonial" do
    patch testmonial_url(@testmonial), params: { testmonial: { name: @testmonial.name, status: @testmonial.status, testmony: @testmonial.testmony, title: @testmonial.title } }
    assert_redirected_to testmonial_url(@testmonial)
  end

  test "should destroy testmonial" do
    assert_difference("Testmonial.count", -1) do
      delete testmonial_url(@testmonial)
    end

    assert_redirected_to testmonials_url
  end
end
