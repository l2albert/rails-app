class ArticlesController < ApplicationController

    def index
        @articles = Article.all
      end

    def show
        @article = Article.find(params[:id])
      end

    def new
        
        end
   
    def edit
    @article = Article.find(params[:id])
        end
   
    def create
     @article = Article.new(params[:article])
   
    if @article.save
      redirect_to @article
    else
      render 'new'
        end
    end
end

