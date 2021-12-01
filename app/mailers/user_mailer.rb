class UserMailer < ApplicationMailer
  default from: 'contact@theslothproject.com'
 
  def welcome_email(user)
    @user = user 
    @url  = 'https://the-sloth-project.herokuapp.com/' 
    mail(to: @user.email, subject: 'Bienvenue chez TSP') 
  end

end