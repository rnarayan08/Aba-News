# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  require 'flickr'
  def search_flickr
    flickr=Flickr.new'f9e5f77e065fc95f49f48ae0f5cb8365'
    render :partial =>'left_sidebar',:collection=>flickr.photos(:tags=>"Flower",:per_page=>'24')
  end
end
