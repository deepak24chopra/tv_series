class Serial < ActiveRecord::Base

	has_many :seasons

	validates_presence_of :name
	validates_length_of :name, :maximum => 255
	validates_presence_of :content

	scope :sorted, lambda { order("serials.id ASC") }
	scope :newest_first, lambda { order("serials.created_at DESC") }
	scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
  	}

end