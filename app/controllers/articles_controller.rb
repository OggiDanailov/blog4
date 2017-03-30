class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "Oggi", 
  password: "6u6umiga", except: [:index, :show]

  def index
  	@articles = Article.all
  end

  def new
  @article = current_user.articles.build

  end


  def create
  	@user = User.find(params[:user_id])
    @article = @user.comments.create(article_params)
  
  	
  	redirect_to root_path
	
  end


  def show
  	@article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
  	@article = Article.find(params[:id])
 
  @article.update(article_params)
    
end

def destroy
		@article = Article.find(params[:id])
 
  	@article.destroy
  	redirect_to articles_path

	end



  private 

  def article_params

params.require(:article).permit(:title, :text, :user_id)
end


end
