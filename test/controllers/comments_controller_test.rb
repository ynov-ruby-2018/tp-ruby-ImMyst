require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  # BIEN !
  test "should get index" do
    get comments_index_url
    assert_response :success
  end

  test "should get create" do
    # Ok, ça marche, mais vous testez #index, pas le #create !
    get comments_create_url
    assert_response :success
  end

end
