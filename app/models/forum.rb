class Forum < ApplicationRecord
	has_many :topics, :dependent => :destroy

	def most_recent_post
	  topic = topics.all.order('last_post_at').reverse.first
	  return topic
	end
end
