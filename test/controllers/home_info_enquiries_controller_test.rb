require 'test_helper'

class HomeInfoEnquiriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_info_enquiries_index_url
    assert_response :success
  end

  test "should get new" do
    get home_info_enquiries_new_url
    assert_response :success
  end

  test "should get create" do
    get home_info_enquiries_create_url
    assert_response :success
  end

end
