class UserMailer < ActionMailer::Base
  default from: 'b.bhushan@starkdigital.net'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://www.starkdigital.net'
    
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
