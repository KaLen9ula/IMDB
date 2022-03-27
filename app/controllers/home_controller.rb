class HomeController < ApplicationController
  def index
    @pagy, @movies = pagy(MovieQuery.new(Movie.all, params[:category]).call)
  end
end
