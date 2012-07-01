class ExercisesController < ApplicationController
  def new
    @course = Course.find_by_id(params[:course_id])
    @exercise = @course.exercises.new
  end

  def show
  end

  def create
    @course = Course.find_by_id(params[:exercise][:course_id])
    @directory = "public/data/"+SecureRandom.uuid
    Dir.mkdir(@directory)
    @exercise_file_name = File.join(@directory, "exercise_" + params[:exercise][:title] +SecureRandom.uuid + params[:exercise][:exercise_path].original_filename)
    @script_file_name = File.join(@directory,"script_" + params[:exercise][:title] +SecureRandom.uuid + params[:exercise][:script_path].original_filename)
    File.open(@exercise_file_name, "wb") {|f| f.write params[:exercise][:exercise_path].read }
    File.open(@script_file_name, "wb") {|f| f.write params[:exercise][:script_path].read }

    @exercise = @course.exercises.create(
       :description => params[:exercise][:description],
       :due_date => Date.new(),
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

  end
end
