class ArticlesController < ApplicationController

  def new
  end

  def create
    @article= Article.create(article_param)
    redirect_to @article
  end

  def show
    @article= Article.find(params[:id])
  end

  def index
    @article=Article.all
  end

  private
  def article_param
    params.require(:article).permit(:title, :text)
  end
end
