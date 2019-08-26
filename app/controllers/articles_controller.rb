class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit,:update, :destroy]

  def home
  end

  def press
    @press_articles = Article.where(category: 'News')
  end

  def casestudies
    @press_articles = Article.where(category: 'Case-studies')
  end

  def science
    @press_articles = Article.where(category: 'Science')
  end

  def standards_glossary
  end

  def factsheets
    @press_articles = Article.where(category: 'Factsheets')
  end

  def manuals
    @press_articles = Article.where(category: 'Manuals')
  end

  # ******* CRUD BELOW ***************

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to articles_path
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article) 
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :subtitle, :body, :category, :author, :promoted, :position )
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
