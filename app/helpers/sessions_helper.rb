module SessionsHelper

  def sign_in(user, remember = false)
    if remember
      cookies[:remember_token] =  { :value => user.remember_token, :expires => 2.weeks.from_now }
    else
      cookies[:remember_token] = user.remember_token
    end
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def signed_in?
    !current_user.nil?
  end
end
