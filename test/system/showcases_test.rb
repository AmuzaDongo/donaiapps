require "application_system_test_case"

class ShowcasesTest < ApplicationSystemTestCase
  setup do
    @showcase = showcases(:one)
  end

  test "visiting the index" do
    visit showcases_url
    assert_selector "h1", text: "Showcases"
  end

  test "should create showcase" do
    visit showcases_url
    click_on "New showcase"

    fill_in "Caption", with: @showcase.caption
    fill_in "Domain", with: @showcase.domain
    fill_in "Status", with: @showcase.status
    click_on "Create Showcase"

    assert_text "Showcase was successfully created"
    click_on "Back"
  end

  test "should update Showcase" do
    visit showcase_url(@showcase)
    click_on "Edit this showcase", match: :first

    fill_in "Caption", with: @showcase.caption
    fill_in "Domain", with: @showcase.domain
    fill_in "Status", with: @showcase.status
    click_on "Update Showcase"

    assert_text "Showcase was successfully updated"
    click_on "Back"
  end

  test "should destroy Showcase" do
    visit showcase_url(@showcase)
    click_on "Destroy this showcase", match: :first

    assert_text "Showcase was successfully destroyed"
  end
end
