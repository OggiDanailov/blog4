require 'test_helper'

class UserCommentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_comment_new_url
    assert_response :success
  end

end
