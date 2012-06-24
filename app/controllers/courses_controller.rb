class CoursesController < ApplicationController
  def new
    @course = Course.new
    @lecturers = User.lecturers
    @students = User.students
    if @lecturers.empty?
      flash[:warning] = "Need to define at least one lecturer before creating course"
      redirect_to admin_path(current_user)
    end
  end

  def show
  end
  def create
    #TODO: check permissions
    # course = Course.create!(name: params[:name], )
    @name = params[:course][:name]
    @lecturer_id = params[:course][:lecturer_id]
    @course = Course.create(name:@name.to_s, lecturer_id: @lecturer_id.to_i)
    if @course.save
      flash[:success] = "Course created"
      redirect_to admin_path(current_user)
    else
      render 'new'
    end
  end
end
