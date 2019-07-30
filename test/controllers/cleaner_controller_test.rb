require 'test_helper'

class CleanerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cleaner_create_url
    assert_response :success
  end

  test "should get new" do
    get cleaner_new_url
    assert_response :success
  end

end
