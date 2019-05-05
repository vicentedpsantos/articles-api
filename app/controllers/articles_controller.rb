# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    render json: serializer.new(Article.recent.
      page(params[:page]).
      per(params[:per_page]))
  end

  def show
    render json: serializer.new(Article.find(params[:id]))
  end

  private

  def serializer
    ArticleSerializer
  end
end
