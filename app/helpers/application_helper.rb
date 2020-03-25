module ApplicationHelper
	#full_title helper: returns base title if specific title is undefined
	def full_title(page_title = ' ')
		base_title = "CoinLens"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end
end
