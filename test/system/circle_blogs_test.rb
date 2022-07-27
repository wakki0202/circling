require "application_system_test_case"

class CircleBlogsTest < ApplicationSystemTestCase
  setup do
    @circle_blog = circle_blogs(:one)
  end

  test "visiting the index" do
    visit circle_blogs_url
    assert_selector "h1", text: "Circle blogs"
  end

  test "should create circle blog" do
    visit circle_blogs_url
    click_on "New circle blog"

    fill_in "Content", with: @circle_blog.content
    fill_in "Title", with: @circle_blog.title
    click_on "Create Circle blog"

    assert_text "Circle blog was successfully created"
    click_on "Back"
  end

  test "should update Circle blog" do
    visit circle_blog_url(@circle_blog)
    click_on "Edit this circle blog", match: :first

    fill_in "Content", with: @circle_blog.content
    fill_in "Title", with: @circle_blog.title
    click_on "Update Circle blog"

    assert_text "Circle blog was successfully updated"
    click_on "Back"
  end

  test "should destroy Circle blog" do
    visit circle_blog_url(@circle_blog)
    click_on "Destroy this circle blog", match: :first

    assert_text "Circle blog was successfully destroyed"
  end
end
