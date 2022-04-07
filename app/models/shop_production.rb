class ShopProduction
  include ActiveModel::Model
  attr_accessor :shop_name, :shi_ku_gun, :chome_banchi, :shop_url, :prefectures_id, :user_id, :production_name, :purchase_date, :coffee_beans_type, :farm_name, :product_report, :product_category_id, :coffee_blend_id, :degree_of_roasting_id, :country_of_origin_id, :carefully_selected_method_id, :sweetness_id, :acidity_id, :bitter_taste_id, :flavor_id, :shop_id, :image

  with_options presence: true do
    validates :shop_name
    validates :shop_url
    validates :production_name
    validates :purchase_date
  end

  with_options other_than: 0 do
    validates :prefectures, numericality: { message: "can't be blank"}
    validates :product_category, numericality: { message: "can't be blank"}
    validates :coffee_blend, numericality: { message: "can't be blank"}
    validates :degree_of_roasting, numericality: { message: "can't be blank"}
    validates :country_of_origin, numericality: { message: "can't be blank"}
    validates :carefully_selected_method, numericality: { message: "can't be blank"}
    validates :sweetness, numericality: { message: "can't be blank"}
    validates :acidity, numericality: { message: "can't be blank"}
    validates :bitter_taste, numericality: { message: "can't be blank"}
    validates :flavor, numericality: { message: "can't be blank"}
  end
end