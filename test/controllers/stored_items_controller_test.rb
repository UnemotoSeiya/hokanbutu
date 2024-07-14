require "test_helper"

class StoredItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get stored_items_new_url
    assert_response :success
  end

  test "should get index" do
    get stored_items_index_url
    assert_response :success
  end

  test "should get show" do
    get stored_items_show_url
    assert_response :success
  end

  test "should get edit" do
    get stored_items_edit_url
    assert_response :success
  end
end
