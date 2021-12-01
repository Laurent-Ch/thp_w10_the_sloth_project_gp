class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def welcome_email(user)
    @user = user 
    @url  = 'https://the-sloth-project.herokuapp.com/' 
    mail(to: @user.email, subject: 'Bienvenue chez TSP') 
  end

end