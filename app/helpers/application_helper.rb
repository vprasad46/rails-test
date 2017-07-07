module ApplicationHelper

	def pagetitle(title = " ")
		base_title = "Ruby app"
		if title.empty?
			return	base_title
		else 
			return title + " | "+ base_title
		end
	end
end
