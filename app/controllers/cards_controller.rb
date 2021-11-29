class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def create
    @picture = picture.find(params[:id])
    @card = Card.create(user:current_user, picture: @picture)
  end

  def index
    @cards = Card.where(user: current_user)
  end

end
