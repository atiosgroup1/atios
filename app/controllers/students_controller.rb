class StudentsController < UsersController
  # To change this template use File | Settings | File Templates.
  def show
    @courses = current_user.courses
     render 'users/student'
  end
end