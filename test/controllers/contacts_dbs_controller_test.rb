require "test_helper"

class ContactsDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacts_db = contacts_dbs(:one)
  end

  test "should get index" do
    get contacts_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_contacts_db_url
    assert_response :success
  end

  test "should create contacts_db" do
    assert_difference("ContactsDb.count") do
      post contacts_dbs_url, params: { contacts_db: { email: @contacts_db.email, linkedin: @contacts_db.linkedin, name: @contacts_db.name, phone: @contacts_db.phone } }
    end

    assert_redirected_to contacts_db_url(ContactsDb.last)
  end

  test "should show contacts_db" do
    get contacts_db_url(@contacts_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacts_db_url(@contacts_db)
    assert_response :success
  end

  test "should update contacts_db" do
    patch contacts_db_url(@contacts_db), params: { contacts_db: { email: @contacts_db.email, linkedin: @contacts_db.linkedin, name: @contacts_db.name, phone: @contacts_db.phone } }
    assert_redirected_to contacts_db_url(@contacts_db)
  end

  test "should destroy contacts_db" do
    assert_difference("ContactsDb.count", -1) do
      delete contacts_db_url(@contacts_db)
    end

    assert_redirected_to contacts_dbs_url
  end
end
