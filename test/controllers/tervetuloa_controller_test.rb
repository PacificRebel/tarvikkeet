require 'test_helper'

class TervetuloaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tervetuloa_index_url
    assert_response :success
  end

end
