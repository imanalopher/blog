class ArticlesController < ApplicationController
  def search
    name = params[:q]
    if name.nil?
      name = ''
    end
    @articles = Article.where(["title LIKE ? ", "%" + name + "%"]).page(params[:page]).per(10)
  end
  def new
    @article = Article.new
  end

  def index
    @articles = Article.page(params[:page]).per(10)
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render new_article_path
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end