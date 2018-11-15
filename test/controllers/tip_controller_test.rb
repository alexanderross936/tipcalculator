require 'test_helper'

class TipControllerTest < ActionDispatch::IntegrationTest
  test "should get questions" do
    get tip_questions_url
    assert_response :success
  end

  test "should get results" do
    get tip_results_url
    assert_response :success
  end

end
