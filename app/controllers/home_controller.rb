class HomeController < ApplicationController
	def index		
	end
	def about
	end
	def contact_us
	end
	def placement
		@testimonial = Testimonial.all
	end
end
