class User < ActiveRecord::Base
  attr_accessible :email, :type, :user_name
  scope :admins, where(:type => "Admin")
  scope :lecturers, where(:type => "Lecturer")
  scope :students, where(:type => "Student")

  validates :type, presence:true, allow_nil: false
  validates :email,presence: true





  def method_missing(m, *args, &block)
    if m.to_s =~ /^is_(.+)\?$/  #like is_student?
      self.type.downcase==$1.downcase
    else
      super
    end
  end
end
