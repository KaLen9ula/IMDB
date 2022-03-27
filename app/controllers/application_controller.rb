class ApplicationController < ActionController::Base
  include Pagy::Backend

  skip_before_action :verify_authenticity_token

  before_action :categories

  private

  def categories
    @categories ||= Category.all
  end
end
