class Comment < ActiveRecord::Base

	validates_presence_of :username
	validates_presence_of :episode_id
	validates_presence_of :content


	scope :newest_first, lambda { order("comments.created_at DESC") }

end