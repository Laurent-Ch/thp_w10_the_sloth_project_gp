class Order < ApplicationRecord
  after_create :confirm_order

  def confirm_order
    OrderMailer.confirmation_email(self).deliver_now
  end

  belongs_to :user
  has_many :pictures_orders
  has_many :pictures, through: :pictures_orders
end
