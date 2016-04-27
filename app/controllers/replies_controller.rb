class RepliesController < ApplicationController

  def index

  end

  def new
    @reply = Reply.new
    @comment = Comment.find(params[:comment_id])
  end

  def create
      @reply = Reply.new(reply_params)
      @reply.save
      redirect_to :controller => "articles", :action => "index"
  end

  private
    def reply_params
      params.require(:@reply).permit(:reply,  :comment_id)
    end
end
