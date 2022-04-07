class Shop < ApplicationRecord
  has_one :production
  belongs_to :prefectures
  belongs_to :user
end
