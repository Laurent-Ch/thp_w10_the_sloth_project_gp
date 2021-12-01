# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

require 'mailjet'
Mailjet.configure do |config|
config.api_key = ENV['MAILJET-LOGIN']
config.secret_key = ENV['MAILJET-PWD']
config.api_version = "v3.1"
end
variable = Mailjet::Send.create(messages: [{
  'From'=> {
    'Email'=> 'chamouleau.laurent@gmail.com',
    'Name'=> 'Laurent'
  },
  'To'=> [
    {
      'Email'=> 'chamouleau.laurent@gmail.com',
      'Name'=> 'Laurent'
    }
  ],
  'Subject'=> 'Greetings from Mailjet.',
  'TextPart'=> 'My first Mailjet email',
  'HTMLPart'=> '<h3>Dear passenger 1, welcome to <a href=\'https://www.mailjet.com/\'>Mailjet</a>!</h3><br />May the delivery force be with you!',
  'CustomID' => 'AppGettingStartedTest'
}]
)
p variable.attributes['Messages']