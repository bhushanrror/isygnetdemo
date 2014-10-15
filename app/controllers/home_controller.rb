class HomeController < ApplicationController

	def index
		@courses = Course.find(:all)
		@recruiters = RecruitmentPartner.all
	end

	def about
		@courses = Course.find(:all)
	end
	def course_detail
		@courses = Course.find(:all)
		@course = Course.find(params[:id])
	end	
	def contact
		@courses = Course.find(:all)
	end
	def placement
		@testimonial = Testimonial.all
	end
end
