class AverageRatingQuery
  attr_reader :movie

  def initialize(movie)
    @movie = movie
  end

  def call
    grade_records = []
    User.all.each do |user|
      grade_records << Grade.where(user: user, movie: movie).last
    end
    grade_records.empty? ? 10 : grade_records.compact.map(&:rating).sum/grade_records.count
  end
end
