class ApplicationController < ActionController::Base
  before_filter :require_login
  protect_from_forgery
  include SessionsHelper

  private

  def require_login
    unless signed_in?
      flash[:warning] = "Log in to access that section"
      redirect_to login_path
    end
  end

end
