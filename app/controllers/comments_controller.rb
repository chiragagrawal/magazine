class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    article = Article.find(params[:article_id])
    user_id = current_user.id
    @comment = article.comments.create(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_path(article.id), notice: 'Comment was successfully created.' }
        format.json { render json: article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: article.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

  end

  def destroy


  end
  private

  def comment_params
    params.require(:comments).permit(:comment, :user_id)
  end
end
