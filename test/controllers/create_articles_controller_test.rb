require "test_helper"

class CreateArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get create_articles_show_url
    assert_response :success
  end

  test "should get new" do
    get create_articles_new_url
    assert_response :success
  end
end
