# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Isygnetdemo::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => 'isygnet.herokuapp.com',
:port => 587,
:user_name => "b.bhushan@starkdigital.net",
:password => "android123",
:authentication => :plain,
:enable_starttls_auto => true,
:openssl_verify_mode => 'none'
}
