class ArticlesController < ApplicationController
  before_action :signed_in_user

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "Article created!"
      redirect_to root_url
    else
      render 'core/home'
    end
  end

  def destroy
  end

  private

    def article_params
      params.require(:article).permit(:content)
    end
end