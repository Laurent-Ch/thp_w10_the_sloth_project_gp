# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  # Source : https://stackoverflow.com/questions/30226176/ruby-on-rails-bad-username-password-535-auth-failed
  :password => ENV['SENDGRID_PWD'],
  :domain => 'https://the-sloth-project.herokuapp.com/',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
