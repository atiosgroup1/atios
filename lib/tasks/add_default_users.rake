namespace :db do
  desc "Add admin, lecturer and student users to database"
  task add_default_users: :environment do
    add_admin
    add_lecturers
    add_students
    add_courses
    enroll_students
  end
end

def add_admin
  puts "Add admin:"
  admin = Admin.create!(user_name:"admin", password:"admin1", email: "admin@atios.com")
  puts admin.user_name
end

def add_lecturers
  puts "Add lecturers:"
  @lecturer1 = Lecturer.create!(user_name: "lecturer1", password:"lecturer1", email: "lecturer@atios.com")
  puts @lecturer1.user_name
  @lecturer2 = Lecturer.create!(user_name: "lecturer2", password:"lecturer2", email: "lecturer2@atios.com")
  puts @lecturer2.user_name
end

def add_students
  puts "Add students:"
  @student1 = Student.create!(user_name:"student1", password:"student1", email: "student1@atios.com")
  puts @student1.user_name
  @student2 = Student.create!(user_name:"student2", password:"student2", email: "student2@atios.com")
  puts @student2.user_name
  @student3 = Student.create!(user_name:"student3", password:"student3", email: "student3@atios.com")
  puts @student3.user_name
  @student4 = Student.create!(user_name:"student4", password:"student4", email: "student4@atios.com")
  puts @student4.user_name
  @student5 = Student.create!(user_name:"student5", password:"student5", email: "student5@atios.com")
  puts @student5.user_name
  @student6 = Student.create!(user_name:"student6", password:"student6", email: "student6@atios.com")
  puts @student6.user_name
  @student7 = Student.create!(user_name:"student7", password:"student7", email: "student7@atios.com")
  puts @student7.user_name
  @student8 = Student.create!(user_name:"student8", password:"student8", email: "student8@atios.com")
  puts @student8.user_name
  @student9 = Student.create!(user_name:"student9", password:"student9", email: "student9@atios.com")
  puts @student9.user_name
end

def add_courses
  puts "Add courses:"
  @course1 = Course.create!(name:"course1", lecturer_id: @lecturer1.id)
  puts @course1.name
  @course2 = Course.create!(name:"course2", lecturer_id: @lecturer1.id)
  puts @course2.name
  @course3 = Course.create!(name:"course3", lecturer_id: @lecturer2.id)
  puts @course3.name
end

def enroll_students
  puts "Enroll students to courses"
  enrollment = @course1.enroll!(@student1)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"

  enrollment = @course1.enroll!(@student2)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"

  enrollment = @course3.enroll!(@student3)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"

  enrollment = @course2.enroll!(@student4)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"

  enrollment = @course1.enroll!(@student5)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"

  enrollment = @course3.enroll!(@student6)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"

  enrollment = @course1.enroll!(@student7)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"

  enrollment = @course2.enroll!(@student8)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"

  enrollment = @course3.enroll!(@student9)
  puts "#{enrollment.student} enrolled to #{enrollment.course}"
end