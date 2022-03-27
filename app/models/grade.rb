class Grade < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user

  validates :user_id, numericality: { only_integer: true, greater_than: 0 }
  validates :movie_id, numericality: { only_integer: true, greater_than: 0 }
  validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 11 }
end
