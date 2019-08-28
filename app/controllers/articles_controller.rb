class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit,:update, :destroy]

  def home
  end

  def press
    @press_articles = Article.where(category: 'News')
  end

  def casestudies
    @casestudies = Article.where(category: 'Case-studies')
  end

  def science
    @science = Article.where(category: 'Science')
  end

  def standards_glossary
    @standards = Article.where(category: 'Standard')
    @glossary = Article.where(category: 'Glossary')
  end

  def factsheets
    @factsheets = Article.where(category: 'Factsheets')
  end

  def manuals
    @manuals = Article.where(category: 'Manuals')
  end

  # def index_by_tag
  #   @articles_by_tag = Article.where()
  # end

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
    params.require(:article).permit(:title, :subtitle, :body, :category, :author, :promoted, :position, tag_ids:[] )
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
