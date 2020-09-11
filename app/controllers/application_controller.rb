class ApplicationController < ActionController::API
  include ActionController::MimeResponds

  before_action :authenticate_user!, unless: :devise_controller?

  respond_to :json
end
