class HomeController < ApplicationController

	def index
		@courses = Course.find(:all)
		@recruiters = RecruitmentPartner.all
		@testimonials = Testimonial.all
		@placements = Placement.all 
	end

	def about
		@courses = Course.find(:all)
	end
	def course_detail
		@courses = Course.find(:all)
		@course = Course.friendly.find(params[:title])
	end	
	def contact
		@user = User.new
		@courses = Course.all
	end
	def placement
		@courses = Course.all
		@testimonials = Testimonial.all
		@placements = Placement.all
	end
	def sendmail		
		puts @user
		#UserMailer.welcome_email(@user).deliver
	end
end
