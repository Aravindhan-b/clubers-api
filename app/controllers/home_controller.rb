class HomeController < ApplicationController
  def index
    @posts = Club.all
  end
end
