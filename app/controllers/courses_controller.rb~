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
    @course = Course.find_by_id(params[:id])
    @exercises = @course.exercises unless @course.nil?
  end

  def index
    if current_user.is_admin?
      redirect_to admin_path
    else
      @courses = current_user.courses
    end
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

  def enroll
    @student = current_user if current_user.is_student?
    @course = Course.find_by_id(params[:id])
    if @course.enroll! @student
      #go to success
      flash[:success] = "Successfully enrolled to course '#{@course.name}'"
      redirect_to course_path @course
    else
      #goto to other path
      flash[:error] = "Failed to enroll to course '#{@course.name}'"
      redirect_to courses_path
    end


  end
end
