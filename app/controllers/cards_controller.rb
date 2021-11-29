class CardsController < ApplicationController

  def index
    @cards = Card.where(user: current_user)
  end

end
