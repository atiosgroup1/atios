class LecturersController < UsersController
  # To change this template use File | Settings | File Templates.
  
   def new
    @lecturer = User.lecturers.new
    session[:user] = "lecturers"
    end
  
  def show
    render 'users/lecturer'
    id = params[:id] 
    @lecturer = User.find(id) 
  end
  
  def create
  end
  
 # def destroy
  #  @lecturer = User.find(params[:id])
   # @lecturer.destroy
    #flash[:notice] = "deleted."
    #redirect_to admin_path(current_user)
 # end
  
end
