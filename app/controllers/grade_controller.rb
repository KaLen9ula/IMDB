class GradeController < ApplicationController
  def create
    Grade.create(user_id: params[:grade][:user_id], movie_id: params[:grade][:movie_id], rating: params[:grade][:rating])
    @movie = Movie.find(params[:grade][:movie_id].to_i)
    render layout: false, status: 200
  end
end

