require "test_helper"

class CommissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get commissions_new_url
    assert_response :success
  end

  test "should get create" do
    get commissions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get commissions_destroy_url
    assert_response :success
  end
end
