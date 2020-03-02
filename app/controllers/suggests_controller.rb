class SuggestsController < ApplicationController


 def create
    @article = Article.find(params[:article_id])
    @suggest = @article.suggests.create(suggest_params)
    redirect_to article_path(@article)
  end
 
  private
    def suggest_params
      params.require(:suggest).permit(:suggester, :body)
    end
  end
