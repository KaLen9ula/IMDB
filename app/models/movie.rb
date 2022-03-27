class Movie < ApplicationRecord
  has_many :grades, dependent: :destroy
  belongs_to :category

  validates :title, presence: true
  validates :description, presence: true
end
