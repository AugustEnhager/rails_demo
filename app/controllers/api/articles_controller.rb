class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all
    if articles.any?
      render json: { articles: articles }
    else
      render json: { message: 'There are no articles' }
    end
  end
end
