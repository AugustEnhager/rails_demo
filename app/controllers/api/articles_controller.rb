class Api::ArticlesController < ApplicationController
  before_action :authenticate_user!, only: :create
  def index
    articles = Article.all
    if articles.any?
      render json: { articles: articles }
    else
      render json: { message: 'There are no articles' }
    end
  end

  def create
    
    article = Article.create(title: params[:article][:title],
                             lede: params[:article][:lede],
                             author: params[:article][:author])
    render json: { message: 'You article was created' }, status: 201
  end

  private

  # def authenticate_user!
  #   # temp solution v
  #   render json: { message: 'You have to log in or sign up'}, status: 401
  # end


end
