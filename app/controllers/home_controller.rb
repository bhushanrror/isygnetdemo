class HomeController < ApplicationController

	def index
		@courses = Course.find(:all)
		@recruiters = RecruitmentPartner.all
		@testimonials = Testimonial.all
	end

	def about
		@courses = Course.find(:all)
	end
	def course_detail
		@courses = Course.find(:all)
		@course = Course.find(params[:id])
	end	
	def contact
		@user = User.new
		@courses = Course.find(:all)
	end
	def placement
		@courses = Course.find(:all)
		@testimonial = Testimonial.all
	end
	def sendmail		
		puts @user
		#UserMailer.welcome_email(@user).deliver
	end
end
