class UsersController < ApplicationController
  def show
    if current_user.is_admin?
      redirect_to admin_path current_user
    else if current_user.is_student?
      redirect_to student_path current_user
    else if current_user.is_lecturer?
      redirect_to lecturer_path current_user
    end
    end
     end
  end

  def index
     redirect_to user_path current_user
  end
end
