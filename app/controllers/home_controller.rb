class HomeController < ApplicationController

	def index
		@courses = Course.find(:all)		
	end

	def about
		@courses = Course.find(:all)
	end
	def cource_detail
		@courses = Course.find(:all)
	#	@courses = Course.find(params[:id])
	end	
	def contact_us
	end
	def placement
		@testimonial = Testimonial.all
	end
end
