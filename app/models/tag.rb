class Tag < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :tags_pictures
  has_many :pictures, through: :tags_pictures
end
