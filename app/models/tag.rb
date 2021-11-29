class Tag < ApplicationRecord
  has_many :tags_pictures
  has_many :pictures, through: :tags_pictures
end
