class CardsController < ApplicationController

  def new
    @card = Card.new
  end

  def create
    @picture = Picture.find(params[:id])
    
    @card = Card.create(user: current_user, picture: @picture)
    flash[:notice] = "Photo ajoutée au panier"
    redirect_to @picture
  end


  def destroy
    @destroy_card = Card.find(params[:id])
    @destroy_card.destroy
    redirect_to root_path
  end



  def index
    @cards = Card.where(user: current_user)
    picture_extractor_hash = Hash.new(0)
    picture_extractor_hash = @cards.map { |card| card.picture.id }

    picture_sorted_hash = picture_extractor_hash.sort
  
    @picture_counter_hash = Hash.new(0)
    picture_sorted_hash.each { |picture_number| @picture_counter_hash[picture_number] += 1}
    # puts "$" * 100
    # puts picture_counter_hash
    # puts "$" * 100
    
  
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