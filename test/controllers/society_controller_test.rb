require 'test_helper'

class SocietyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get society_index_url
    assert_response :success
  end

  test "should get show" do
    get society_show_url
    assert_response :success
  end

  test "should get new" do
    get society_new_url
    assert_response :success
  end

  test "should get create" do
    get society_create_url
    assert_response :success
  end

  test "should get ediit" do
    get society_ediit_url
    assert_response :success
  end

  test "should get update" do
    get society_update_url
    assert_response :success
  end

end
