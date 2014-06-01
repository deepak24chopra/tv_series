class Episode < ActiveRecord::Base

	belongs_to :season

	

	validates_presence_of :season
	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :storyline

	scope :sorted, lambda { order("episodes.episode_number ASC") }
	scope :newest_first, lambda { order("episodes.created_at DESC") }

	scope :visible, lambda { where(:visibility => true ) }
	scope :invisible, lambda { where(:visibility => false ) }
end