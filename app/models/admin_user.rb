class AdminUser < ActiveRecord::Base

	has_secure_password

	validates :username, :length => { :within => 8..25 },
                       :uniqueness => true

    scope :sorted, lambda { order("admin_users.id ASC") }


end