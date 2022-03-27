class MovieQuery
  attr_reader :movies, :category

  def initialize(movies, category)
    @movies = movies
    @category = category
  end

  def call
    filter_by_category
    @movies
  end

  private

  def filter_by_category
    @movies = movies.where(category: category) if category
  end
end
