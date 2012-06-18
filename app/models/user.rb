class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :role, :user_name
  has_secure_password

  validates :user_name, uniqueness: true, presence: true, length: {minimum: 6}

end
