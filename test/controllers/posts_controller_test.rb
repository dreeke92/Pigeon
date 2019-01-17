require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get donations" do
    get posts_donations_url
    assert_response :success
  end

  test "should get follows" do
    get posts_follows_url
    assert_response :success
  end

  test "should get ratings" do
    get posts_ratings_url
    assert_response :success
  end

  test "should get likes" do
    get posts_likes_url
    assert_response :success
  end

  test "should get comments" do
    get posts_comments_url
    assert_response :success
  end

end
