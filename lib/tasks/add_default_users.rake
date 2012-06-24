namespace :db do
  desc "Add admin, lecturer and student users to database"
  task add_default_users: :environment do
    add_admin
    add_lecturer
    add_student
  end
end

def add_admin
  admin = Admin.create!(user_name:"admin", password:"admin1", email: "admin@atios.com")
end

def add_lecturer
  lecturer = Lecturer.create!(user_name: "lecturer", password:"lecturer1", email: "lecturer@atios.com")
end

def add_student
  student = Student.create!(user_name:"student", password:"student1", email: "student@atios.com")
end