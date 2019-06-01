require "application_system_test_case"

class EjsTest < ApplicationSystemTestCase
  setup do
    @ej = ejs(:one)
  end

  test "visiting the index" do
    visit ejs_url
    assert_selector "h1", text: "Ejs"
  end

  test "creating a Ej" do
    visit ejs_url
    click_on "New Ej"

    fill_in "Name", with: @ej.name
    fill_in "University", with: @ej.university_id
    click_on "Create Ej"

    assert_text "Ej was successfully created"
    click_on "Back"
  end

  test "updating a Ej" do
    visit ejs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ej.name
    fill_in "University", with: @ej.university_id
    click_on "Update Ej"

    assert_text "Ej was successfully updated"
    click_on "Back"
  end

  test "destroying a Ej" do
    visit ejs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ej was successfully destroyed"
  end
end
