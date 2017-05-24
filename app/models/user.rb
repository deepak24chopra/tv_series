class User < ActiveRecord::Base

	has_secure_password

	validates_presence_of :username

    validates_presence_of :email

    scope :newest_first, lambda { order("users.id DESC") }

end