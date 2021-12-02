class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @amount = session[:amount]*100
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @stripe_amount = session[:amount]*100

    begin
      customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],

      })
      charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @stripe_amount,
      description: "Achat d'un produit",
      currency: 'eur',
      })

      #création de l'order
      @order = Order.create(user: current_user)

      #création de pictureorder avant suppression du panier
      @cards = Card.where(user: current_user)
      @cards.each do |card|
        PicturesOrder.create(order: @order, picture: card.picture)
      end

      #suppression du panier
      @cards.delete_all

      rescue Stripe::CardError => e
        flash[:error] = e.message
      redirect_to new_order_path
    end
    # After the rescue, if the payment succeeded
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.fetch(:order, {})
    end
end
