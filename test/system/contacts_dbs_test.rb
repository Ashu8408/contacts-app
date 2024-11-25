require "application_system_test_case"

class ContactsDbsTest < ApplicationSystemTestCase
  setup do
    @contacts_db = contacts_dbs(:one)
  end

  test "visiting the index" do
    visit contacts_dbs_url
    assert_selector "h1", text: "Contacts dbs"
  end

  test "should create contacts db" do
    visit contacts_dbs_url
    click_on "New contacts db"

    fill_in "Email", with: @contacts_db.email
    fill_in "Linkedin", with: @contacts_db.linkedin
    fill_in "Name", with: @contacts_db.name
    fill_in "Phone", with: @contacts_db.phone
    click_on "Create Contacts db"

    assert_text "Contacts db was successfully created"
    click_on "Back"
  end

  test "should update Contacts db" do
    visit contacts_db_url(@contacts_db)
    click_on "Edit this contacts db", match: :first

    fill_in "Email", with: @contacts_db.email
    fill_in "Linkedin", with: @contacts_db.linkedin
    fill_in "Name", with: @contacts_db.name
    fill_in "Phone", with: @contacts_db.phone
    click_on "Update Contacts db"

    assert_text "Contacts db was successfully updated"
    click_on "Back"
  end

  test "should destroy Contacts db" do
    visit contacts_db_url(@contacts_db)
    click_on "Destroy this contacts db", match: :first

    assert_text "Contacts db was successfully destroyed"
  end
end
