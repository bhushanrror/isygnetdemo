class HomeController < ApplicationController

	def index
		@courses = Course.find(:all)
		@recruiters = RecruitmentPartner.all
		@testimonials = Testimonial.all
		@placements = Placement.all 
		@settings = Setting.all

	end
	def about
		@courses = Course.find(:all)
		@settings = Setting.all
	end
	def course_detail
		@courses = Course.find(:all)
		@course = Course.friendly.find(params[:title])
		@settings = Setting.all
	end	
	def contact
		@user = User.new
		@courses = Course.all
		@settings = Setting.all
	end
	def placement
		@courses = Course.all
		@testimonials = Testimonial.all
		@placements = Placement.all
		@settings = Setting.all
	end
	def sendmail	
	@user = User.new
	if (!params[:name])
		redirect_to contact_path, notice: 'name field empty'
	else
		@user.name = params[:name]
	end
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.message = params[:message]
    puts @user
    UserMailer.welcome_email(@user).deliver
    redirect_to contact_path, notice: 'Message sent'
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :phone, :message)
	end
end
