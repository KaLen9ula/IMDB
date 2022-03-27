module ApplicationHelper
  include Pagy::Frontend

  def movie_has_grade?(movie, user)
    Grade.where(movie: movie, user: user).any?
  end
end
