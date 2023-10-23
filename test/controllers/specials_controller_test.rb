require "test_helper"

class SpecialsControllerTest < ActionDispatch::IntegrationTest
  test "should get shemdog" do
    get specials_shemdog_url
    assert_response :success
  end
end
