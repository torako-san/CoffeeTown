class Production < ApplicationRecord
  belongs_to :bitter_taste
  belongs_to :flavor
  belongs_to :shop
  belongs_to :product_category
  belongs_to :coffee_blend
  belongs_to :degree_of_roasting
  belongs_to :country_of_origin
  belongs_to :carefully_selected_method
  belongs_to :sweetness
  belongs_to :acidity
  has_many_attached :images
end
