class SessionsController < ApplicationController
  skip_before_filter :require_login
  def new

  end

  def create
    user = User.find_by_user_name(params[:session][:user_name])
    if user && user.authenticate(params[:session][:password])
      #signin and continue
      sign_in user
      if current_user.is_admin?
        redirect_to admin_path(user)
      else if current_user.is_student?
        redirect_to student_path(user)
           else if current_user.is_lecturer?
             redirect_to lecturer_path(user)
                end
           end
      end
    else
      flash[:error] = 'Invalid user name / password combination'
      render 'new'
      # show error
    end
  end

  def destroy
    self.current_user = nil
    cookies.delete(:remember_token)
    redirect_to root_path

  end
end
