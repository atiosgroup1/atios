class DemoPagesController < ApplicationController
  def home
    @user = ""
  end

  def student
    @user="Student"
    @exercises = [["Exercise 1", 92, 91, 5.days.ago, true ],
                  ["Exercise 2", 0, 0, 5.days.from_now, false ],
                  ["Exercise 3", 0, 0, 1.hour.from_now, false ],
                  ["Exercise 4", 0, 91, 5.days.ago, true ],
                  ["Exercise 5", 92, 91, 5.days.ago, false ],
                  ["Exercise 6", 92, 91, 5.days.ago, false ]]
  end

  def lecturer
  end

  def lecturer_student_mgmt
    @to_add = "Student"
    @user = "Lecturer"
    @students = ["Michal Appel",
    	"Vladimir Makarov" ,
    	"Vladimir Brum" ,
    	"Vladimir Bubenko" ,
    	"Vladislav Stremousov" ,
    	"Sagi Vaizman" ,
     "Yuri Shterenberg"]

  end

  def lecturer_exercise_mgmt
    @user = "Lecturer"
  end

  def lecturer_add_student

  end

  def admin
    @user="Admin"
    @to_add = "Lecturer"
    @lecturers = [[1, "Yagel Reuven", "robi@post.jce.ac.il"],
                  ]
  end
end
