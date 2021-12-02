class Order < ApplicationRecord
after_save :confirm_order

belongs_to :user
has_many :pictures_orders
has_many :pictures, through: :pictures_orders

  def confirm_order
    OrderMailer.confirmation_email(self).deliver_now
  end

end
