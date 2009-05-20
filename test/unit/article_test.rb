require File.dirname(__FILE__) + '/../test_helper'

class ArticleTest < Test::Unit::TestCase
  fixtures :all
  def test_create_and_destroy
     initial_rec_count =Article.count  
     new_rec = Article.new  
     new_rec.save  
     assert_equal(initial_rec_count + 1, Article.count)
     new_rec.destroy
     assert_equal(initial_rec_count, Article.count)
  end

end
