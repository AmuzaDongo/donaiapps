require "test_helper"

class HireControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hire_index_url
    assert_response :success
  end
end
