class UserMailer < ActionMailer::Base
  default from: 'b.bhushanb89@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://www.starkdigital.net'
    
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
