class User < ApplicationRecord
  has_many :orders

  has_many :cards
  has_many :pictures, through: :cards
end
