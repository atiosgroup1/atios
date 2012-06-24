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

class Lecturer < User
  has_many :courses
  # To change this template use File | Settings | File Templates.
end
