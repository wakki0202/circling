require "test_helper"

class CircleBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @circle_blog = circle_blogs(:one)
  end

  test "should get index" do
    get circle_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_circle_blog_url
    assert_response :success
  end

  test "should create circle_blog" do
    assert_difference("CircleBlog.count") do
      post circle_blogs_url, params: { circle_blog: { content: @circle_blog.content, title: @circle_blog.title } }
    end

    assert_redirected_to circle_blog_url(CircleBlog.last)
  end

  test "should show circle_blog" do
    get circle_blog_url(@circle_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_circle_blog_url(@circle_blog)
    assert_response :success
  end

  test "should update circle_blog" do
    patch circle_blog_url(@circle_blog), params: { circle_blog: { content: @circle_blog.content, title: @circle_blog.title } }
    assert_redirected_to circle_blog_url(@circle_blog)
  end

  test "should destroy circle_blog" do
    assert_difference("CircleBlog.count", -1) do
      delete circle_blog_url(@circle_blog)
    end

    assert_redirected_to circle_blogs_url
  end
end
