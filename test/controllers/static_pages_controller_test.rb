require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title","home"
  end

  test "should get blog" do
    get :blog
    assert_response :success
    assert_select "title","blog"
  end

end
