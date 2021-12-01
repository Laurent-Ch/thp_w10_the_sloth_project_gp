class OrderMailer < ApplicationMailer
  default from: 'contact@theslothproject.com'

  def confirmation_order(order)
    @order = order
    @user = @order.user
    @pictures = PicturesOrder.where(order: @order)
    @url  = 'https://the-sloth-project.herokuapp.com/' 
    mail(to: @user.email, subject: 'Merci pour votre confiance') 
  end

end
