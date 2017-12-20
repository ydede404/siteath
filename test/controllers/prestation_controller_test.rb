require 'test_helper'

class PrestationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prestation_new_url
    assert_response :success
  end

  test "should get index" do
    get prestation_index_url
    assert_response :success
  end

  test "should get show" do
    get prestation_show_url
    assert_response :success
  end

end
