class LecturersController < UsersController
  # To change this template use File | Settings | File Templates.
  def new
    @lecturer = Lecturer.new
    session[:user] = "lecturers"
    end
  def show
    redirect_to courses_path
    #render 'users/lecturer'
  end
end
