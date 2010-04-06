require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template 'index'
    assert_not_nil assigns(:articles)
  end

  test "should get new" do
    login_as(:eugene)
    get :new
    assert_response :success
  end

  test "should create article" do
    login_as(:eugene)
    assert_difference('Article.count') do
      post :create, :article => { :title => 'Post title',
                                  :body  => 'Lorem ipsum..' }
      end

    assert_response :redirect
    assert_redirected_to article_path(assigns(:article))
  end

  test "should show article" do
    get :show, :id => articles(:welcome_to_rails).to_param

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:article)
    assert assigns(:article).valid?
  end

  test "should get edit" do
    login_as(:eugene)
    get :edit, :id => articles(:welcome_to_rails).to_param
    assert_response :success
  end

  test "should update article" do
    login_as(:eugene)
    put :update, :id => articles(:welcome_to_rails).to_param, :article => articles(:welcome_to_rails).attributes
    assert_redirected_to article_path(assigns(:article))
  end

  test "should destroy article" do
    login_as(:eugene)
    assert_nothing_raised { Article.find(articles(:welcome_to_rails).to_param) }

    assert_difference('Article.count', -1) do
      delete :destroy, :id => articles(:welcome_to_rails).to_param
    end
    assert_response :redirect
    assert_redirected_to articles_path

    assert_raise(ActiveRecord::RecordNotFound) { Article.find(articles(:welcome_to_rails).to_param) }
  end
end
