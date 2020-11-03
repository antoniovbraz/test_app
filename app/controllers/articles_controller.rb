class ArticlesController < ApplicationController
    def show
      @article = Article.find(params[:id])
    end

    def index
      @articles = Article.all
    end

    def def new
      @article = Article.new
    end

    def def create
      @article = Article.new(params[:article])
      if @article.save
        flash[:success] = "Object successfully created"
        redirect_to @article
      else
        flash[:error] = "Something went wrong"
        render 'new'
      end
    end
end
