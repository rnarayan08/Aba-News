#require 'test_helper'
require File.dirname(__FILE__) + '/../test_helper'

class ArticlesControllerTest < ActionController::TestCase
  fixtures :all
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end
  test "should show article" do
    get :show, :id => articles(:one).id
    assert_response :success
  end
  test "should search articles" do
    get :search,:search=>"Good news"
    assert_assigns(:articles)
  end
end
