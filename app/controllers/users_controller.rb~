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
  
  def create
    
    if session[:user].to_s.eql?("lecturers")
      @user = User.lecturers
      msg = "Lecturer Created"
      @user1 = @user.create(user_name: params[:user][:user_name].to_s,password: params[:user][:password].to_s, email: params[:user][:email].to_s)
      @user1.save  
      
      else if session[:user].to_s.eql?("students")
          @user = User.students
          msg = "Student Created"
          @user1 = @user.create(user_name: params[:user][:user_name].to_s,password: params[:user][:password].to_s, email: params[:user][:email].to_s)
          @user1.save
          @student = Student.find_by_id(@user1.id)           
          Course.all.each do |course|
            if params[:"#{course.id}"]
              @course = Course.find_by_id(course.id)
              @course.enroll! @student
            end
          end
      end
    end
   
    if @user1.save
      flash[:success] = msg
      redirect_to admin_path(current_user)
    end
    session[:user] = nil
  end
end

