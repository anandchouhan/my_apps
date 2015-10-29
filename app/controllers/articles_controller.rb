class ArticlesController < ApplicationController
	before_filter :authenticate_user!, only: [:create] 

	def index
		@user = current_user
	  @articles = Article.all
	end
	
	def new
		@user = current_user
	end
	
	def show	
		@user = current_user
	end
	
 
	def create
		@user = current_user
		@article = @user.articles.create(article_params)
		redirect_to  user_articles_path
	end
	
    private
		def article_params
			params.require(:article).permit(:title, :detail)
		end
end

