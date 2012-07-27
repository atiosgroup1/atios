class ExerciseSubmissionsController  < ApplicationController
  #before_filter :check_permissions
  def new

  end

  def show
      @submission = ExerciseSubmission.find(params[:id])
  end

  def create
    @exercise = Exercise.find(params[:exercise_submission][:exercise_id])

    Dir.mkdir("public/data") unless Dir.exist?("public/data")
    @directory = "public/data/"+SecureRandom.uuid
    Dir.mkdir(@directory)

    if ( params[:exercise_submission][:exercise_submission_path].nil?)
      @exercise_submission_file_name = "N/A"
    else
      @exercise_submission_file_name = File.join(@directory, "submission_" + SecureRandom.uuid + params[:exercise_submission][:exercise_submission_path].original_filename)
      File.open(@exercise_submission_file_name , "wb") {|f| f.write params[:exercise_submission][:exercise_submission_path].read }
    end


    succeed = current_user.submit!(@exercise,
                         :student_comment=>params[:exercise_submission][:student_comments],
                         :exercise_submission_path=>@exercise_submission_file_name[7..-1])

    if succeed
      flash[:success] = "Exercise submitted"
      redirect_to exercise_path @exercise
    else
      flash.now[:error] = "Failed to submit exercise"
      render 'new'
    end

  end

  def update
    @submission = ExerciseSubmission.find(params[:id])
    @submission.update_attributes!( params[:exercise_submission])
    grade = params[:exercise_submission][:lecturer_grade]
    if !grade.empty?
      ExerciseSubmission.update_all("lecturer_grade=#{grade}",
                                    "student_id=#{@submission.student_id} AND exercise_id=#{@submission.exercise_id}")


    end

    redirect_to exercise_path @submission.exercise_id
end



  private
  def check_permissions
    true
  end
end