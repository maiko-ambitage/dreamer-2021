require 'test_helper'

class DreamersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dreamers_index_url
    assert_response :success
  end

end
