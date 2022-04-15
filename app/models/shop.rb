class Shop < ApplicationRecord
  
  has_one :production, dependent: :destroy
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefectures

  with_options presence: true do
    validates :shop_name
  end

  validates :prefectures_id, numericality: { other_than: 1, message: "can't be blank" }
end
