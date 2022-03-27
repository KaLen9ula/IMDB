require 'database_cleaner'

require File.expand_path('../config/environment', __dir__)

RSpec.configure do |config|
  config.include Rails.application.routes.url_helpers
  config.include FactoryBot::Syntax::Methods
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    DatabaseCleaner.strategy = :transaction
  end

  config.before do
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
end
