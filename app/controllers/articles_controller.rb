class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update ] 

  def index
    @articles = Article.all
  end

  def show
  end

  def new
  end

  def create
    @article = Article.create(title: params[:title], description: params[:description]) 
    redirect_to article_path(@article)
  end
  
  def edit
  end
  
  def update
    @article.update(title: params[:article][:title]) 
    @article.update(description: params[:article][:description])
    redirect_to article_path(@article)
  end
  
  private
    def set_article
      @article = Article.find(params[:id])
    end
end
