class Order < ApplicationRecord
  belongs_to :user
  has_many :pictures_orders
  has_many :pictures, through: :pictures_orders
end
