class StudentsController < UsersController
  # To change this template use File | Settings | File Templates.
 
 def new
  @student = User.students.new
  @course = Course.all
  session[:user] = "students"
  
 end
  def show
    @courses = current_user.courses
     render 'users/student'
  end
end
