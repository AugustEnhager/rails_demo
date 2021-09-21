class Api::ArticlesController < ApplicationController
  def index
    render json: { message: 'There are no articles' }
  end
end
