class ArticlesController < ApplicationController
  def index

  end

  def new
    @article = Article.new
  end

  def create
    debugger
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end

  end

  private
    def article_params
      params.require(:article).permit(:author, :title, :body)
    end
end
