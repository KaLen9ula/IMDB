FactoryBot.define do
  factory :movie do
    title { FFaker::Movie.title }
    description { FFaker::Book.description }
    category
  end
end
