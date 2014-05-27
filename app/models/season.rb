class Season < ActiveRecord::Base

	belongs_to :serial
	has_many :episodes

	
	validates_presence_of :image_url
	validates_presence_of :name
	validates_presence_of :description


	scope :sorted, lambda { order("seasons.season_number DESC") }
	scope :newest_first, lambda { order("serials.created_at DESC") }

end