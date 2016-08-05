class ArticlesController < ApplicationController

  before_filter :authenticate_user!, :except => [:show, :index]

  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def create
    @article =  Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:header, :article_body)
  end

end
