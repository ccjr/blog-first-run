require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "should create article" do
    article = Article.new

    article.user  = users(:eugene)
    article.title = "Test article"
    article.body  = "Test body"

    assert article.save
  end
  
  test "should find article" do
    article_id = articles(:welcome_to_rails).id
    assert_nothing_raised { Article.find(article_id) }
  end
end
