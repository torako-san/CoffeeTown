class Shop < ApplicationRecord
  has_one :production
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefectures
end
