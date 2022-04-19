class Production < ApplicationRecord
  belongs_to :shop
  has_many_attached :image

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

  validates :product_category_id, numericality: { other_than: 1, message: "can't be blank" }

  with_options presence: true do
    validates :production_name
    validates :purchase_date
    validates :images
    validates :user_id
  end
end
