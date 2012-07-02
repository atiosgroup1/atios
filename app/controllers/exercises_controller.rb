class ExercisesController < ApplicationController
  def new
    @course = Course.find_by_id(params[:course_id])
    @exercise = @course.exercises.new
  end

  def show
  end

  def create
    @course = Course.find_by_id(params[:exercise][:course_id])
    Dir.mkdir("public/data") unless Dir.exist?("public/data")
    @directory = "public/data/"+SecureRandom.uuid
    Dir.mkdir(@directory)
    @exercise_file_name = File.join(@directory, "exercise_" + params[:exercise][:title] +SecureRandom.uuid + params[:exercise][:exercise_path].original_filename)
    @script_file_name = File.join(@directory,"script_" + params[:exercise][:title] +SecureRandom.uuid + params[:exercise][:script_path].original_filename)
    File.open(@exercise_file_name, "wb") {|f| f.write params[:exercise][:exercise_path].read }
    File.open(@script_file_name, "wb") {|f| f.write params[:exercise][:script_path].read }
    p params[:exercise]["due_date(1i)"].inspect
    @exercise = @course.exercises.create(
       :description => params[:exercise][:description],
       :due_date => 2.weeks.from_now,
       :exercise_path=>@exercise_file_name[7..-1],
       :script_path=>@script_file_name[7..-1],
       :title=>params[:exercise][:title])
   if @exercise.save!
     flash[:success] = "Exercise created"
     redirect_to course_path @course
   else
     flash.now[:error] = "Failed to create exercise"
     render 'new'
   end

  end

  def destroy
    @exercise = Exercise.find_by_id(params[:id])
    @course = Course.find_by_id(@exercise.course_id)
    if @exercise.delete
      flash[:success] = "Exercise deleted"
    else
      flash[:error] = "Failed to delete exercise"
    end
    redirect_to course_path @course
  end
end
