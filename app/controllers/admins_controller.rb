class AdminsController < UsersController
  # To change this template use File | Settings | File Templates.
  def show
    @lecturers = User.lecturers
    @students = User.students
    @courses = Course.all
    @courses.inspect
    render 'users/admin'


  end
end