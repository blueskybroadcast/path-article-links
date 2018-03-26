class ArticlesController < ApplicationController

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

end
