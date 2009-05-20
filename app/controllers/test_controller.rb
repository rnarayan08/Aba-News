class TestController < ApplicationController
  def index
   #@comments=Comment.find(:all)
  end
  def show
    render :text=> params[:comment]
  end
  def new
    @comment=Comment.new
  end
end
