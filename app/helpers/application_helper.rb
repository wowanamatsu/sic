module ApplicationHelper

	def url
		if Rails.env.development?
			'http://localhost:3000/'
		else
			'' # Domínio do site.
		end
	end

end
