class Production < ApplicationRecord
  belongs_to :shop
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :product_category
  belongs_to :coffee_blend
  belongs_to :degree_of_roasting
  belongs_to :country_of_origin
  belongs_to :carefully_selected_method
  belongs_to :sweetness
  belongs_to :acidity
  belongs_to :bitter_taste
  belongs_to :flavor
end
