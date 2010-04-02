class CommentsController < ApplicationController
  before_filter :load_article

  def create
    @comment = @article.comments.new(params[:comment])
    if @comment.save
      respond_to do |format|
        format.html { redirect_to @article, :notice => 'Thanks for your comment' }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to @article, :alert => 'Unable to add comment' }
        format.js
      end
    end
  end
  
  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article, :notice => 'Comment deleted'
  end
  
  private
    def load_article
      @article = Article.find(params[:article_id])
    end
end