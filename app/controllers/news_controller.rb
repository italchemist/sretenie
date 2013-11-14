class NewsController < ApplicationController
  def index
  	@news = News.order("id desc")
  end
end
