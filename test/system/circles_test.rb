require "application_system_test_case"

class CirclesTest < ApplicationSystemTestCase
  setup do
    @circle = circles(:one)
  end

  test "visiting the index" do
    visit circles_url
    assert_selector "h1", text: "Circles"
  end

  test "should create circle" do
    visit circles_url
    click_on "New circle"

    fill_in "Content", with: @circle.content
    fill_in "Name", with: @circle.name
    click_on "Create Circle"

    assert_text "Circle was successfully created"
    click_on "Back"
  end

  test "should update Circle" do
    visit circle_url(@circle)
    click_on "Edit this circle", match: :first

    fill_in "Content", with: @circle.content
    fill_in "Name", with: @circle.name
    click_on "Update Circle"

    assert_text "Circle was successfully updated"
    click_on "Back"
  end

  test "should destroy Circle" do
    visit circle_url(@circle)
    click_on "Destroy this circle", match: :first

    assert_text "Circle was successfully destroyed"
  end
end
