class CommentsController < ApplicationController
  
  def index
    @article =Article.find(params[:article_id])
    @comment = @article.comments.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end
  def new
    @article =Article.find(params[:article_id])
    @comment = @article.comments.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end
  def create
    @article =Article.find(params[:article_id])
    puts params[:comment][:name]
    puts params[:comment][:mceEditor]
   #@comment=@article.comments.new
   # @comment.name=params[:comment][:name]
    #@comment.name=params[:comment][:body]
     @comment = @article.comments.create!(params[:comment])
     flash[:notice]="Thank you for the comment"
      respond_to do|format|
        format.js
      end
  end
end
