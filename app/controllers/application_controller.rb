class ApplicationController < ActionController::Base
  before_action :login_default_user!
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  def login_default_user!
    u = User.first
    sign_in(u)
  end
end
