class StaticPagesController < ApplicationController
  def home
    if signed_in?
      redirect_to user_path (current_user)
    else
      redirect_to login_path
    end
  end

  def help
  end

  def about

  end

  def contact
  end
end
