class Article < ActiveRecord::Base
  has_many :comments
  
  define_index do
    indexes body
    indexes title
    indexes comments.body
  end
  
#  def self.search(search)
#    if search
#        #find(:all,:conditions=>['lower(body) LIKE?',"%#{search}%"])
#       
#    else
#      find(:all)
#    end
#  end
#  def get_feed
#    @feed ||= FeedTools::Feed.open('http://rss.cnn.com/services/podcasting/newscast/rss.xml')
#  end
end
