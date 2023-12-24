require "application_system_test_case"

class TestmonialsTest < ApplicationSystemTestCase
  setup do
    @testmonial = testmonials(:one)
  end

  test "visiting the index" do
    visit testmonials_url
    assert_selector "h1", text: "Testmonials"
  end

  test "should create testmonial" do
    visit testmonials_url
    click_on "New testmonial"

    fill_in "Name", with: @testmonial.name
    fill_in "Status", with: @testmonial.status
    fill_in "Testmony", with: @testmonial.testmony
    fill_in "Title", with: @testmonial.title
    click_on "Create Testmonial"

    assert_text "Testmonial was successfully created"
    click_on "Back"
  end

  test "should update Testmonial" do
    visit testmonial_url(@testmonial)
    click_on "Edit this testmonial", match: :first

    fill_in "Name", with: @testmonial.name
    fill_in "Status", with: @testmonial.status
    fill_in "Testmony", with: @testmonial.testmony
    fill_in "Title", with: @testmonial.title
    click_on "Update Testmonial"

    assert_text "Testmonial was successfully updated"
    click_on "Back"
  end

  test "should destroy Testmonial" do
    visit testmonial_url(@testmonial)
    click_on "Destroy this testmonial", match: :first

    assert_text "Testmonial was successfully destroyed"
  end
end
