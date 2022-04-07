class Shop < ApplicationRecord
  has_one :production
  has_one_attached :image
  belongs_to :prefectures
  belongs_to :user
end
