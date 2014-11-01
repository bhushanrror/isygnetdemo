class UserMailer < ActionMailer::Base
  
  def welcome_email(user)
    @user = user
    @url  = 'http://www.starkdigital.net'
    
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
