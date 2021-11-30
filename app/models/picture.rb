class Picture < ApplicationRecord
  has_many :tags_pictures
  has_many :tags, through: :tags_pictures
  
  has_many :pictures_orders
  has_many :orders, through: :pictures_orders
  
  has_many :cards
  has_many :users, through: :cards

end
