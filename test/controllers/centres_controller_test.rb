require 'test_helper'

class CentresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get centres_index_url
    assert_response :success
  end

end
