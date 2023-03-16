require "test_helper"

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get portfolio" do
    get projects_portfolio_url
    assert_response :success
  end
end
