# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  user_name       :string(255)
#  email           :string(255)
#  type            :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :type, :user_name, :password
  has_secure_password

  scope :admins, where(:type => "Admin")
  scope :lecturers, where(:type => "Lecturer")
  scope :students, where(:type => "Student")

  validates :type, presence:true, allow_nil: false
  validates :email,presence: true

  before_save { |user| user.user_name.downcase!}
  before_save :create_remember_token


  def method_missing(m, *args, &block)
    if m.to_s =~ /^is_(.+)\?$/  #like is_student?
      self.type.downcase==$1.downcase
    else
      super
    end
  end

  private
  def create_remember_token
     self.remember_token = SecureRandom.urlsafe_base64
  end
end
