class PicturesOrder < ApplicationRecord
  belongs_to :picture
  belongs_to :order
end
