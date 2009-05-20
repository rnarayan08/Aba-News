require 'rss/2.0'
require 'open-uri'
class ArticlesController < ApplicationController
  # uses_tiny_mce
   uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :theme_advanced_resizing => true,
                              :theme_advanced_resize_horizontal => false,
                              :plugins => %w{ table fullscreen },
                            }
  before_filter :get_feed
  require "feed_tools"
  def index
    #debugger
    @articles = Article.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end
  def show
    @article = Article.find(params[:id])
    #@comments = @article.comments.find(:all)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end
  def search
   # @articles = Article.search(params[:search].downcase)
    @articles = Article.search params[:search].downcase
    render :partial=>'index',:object=>@articles,:layout=>'application'
  end
  def get_feed
  
    #@feed ||= FeedTools::Feed.open('http://rss.cnn.com/services/podcasting/newscast/rss.xml')
    @feed ||= FeedTools::Feed.open('http://peepcode.com/products.rss')
    #Rails.cache.fetch(@feed){FeedTools::Feed.open('http://rss.cnn.com/services/podcasting/newscast/rss.xml')}
  
  end

#   def get_feed
#    open('http://www.apfanews.com/rss/') do |feed|
#     @feed= RSS::Parser.parse(feed, false).items
##   end[0..5] || []
#    @feedxml= open('http://www.apfanews.com/rss')
#    @feed=RSS::Parser.parse(@feedxml,false)
#  end

end
