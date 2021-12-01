class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def create
    @picture = Picture.find(params[:id])
    @card = Card.create(user: current_user, picture: @picture)
  end

  def index
    @cards = Card.where(user: current_user)
    session[:amount] = total_price
  end

private

def total_price
  @total_price = 0
  Card.where(user: current_user).each do |card|
  @total_price = @total_price + card.picture.price
  end
  return @total_price
end

end



