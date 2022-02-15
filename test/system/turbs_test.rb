require "application_system_test_case"

class TurbsTest < ApplicationSystemTestCase
  setup do
    @turb = turbs(:one)
  end

  test "visiting the index" do
    visit turbs_url
    assert_selector "h1", text: "Turbs"
  end

  test "creating a Turb" do
    visit turbs_url
    click_on "New Turb"

    fill_in "Pmin", with: @turb.Pmin
    fill_in "Name", with: @turb.name
    click_on "Create Turb"

    assert_text "Turb was successfully created"
    click_on "Back"
  end

  test "updating a Turb" do
    visit turbs_url
    click_on "Edit", match: :first

    fill_in "Pmin", with: @turb.Pmin
    fill_in "Name", with: @turb.name
    click_on "Update Turb"

    assert_text "Turb was successfully updated"
    click_on "Back"
  end

  test "destroying a Turb" do
    visit turbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turb was successfully destroyed"
  end
end
