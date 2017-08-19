class ArticlesController < ApplicationController
  def new
  	#@article = Article.new
  end
  def create

  	@article = Article.new(params.require(:article).permit(:title, :description))
  	#@article.save
    #redirect_to @article


     if @article.save
     	flash[:notice] = "Article was successfully created"
     	redirect_to article_path(@article)
     else
     	render 'new'
     end

    
  end

  def show
  	@article = Article.find(params[:id])
  end


end