class ShopProduction
  include ActiveModel::Model
  attr_accessor :shop_name, :shi_ku_gun, :chome_banchi, :shop_url, :prefectures_id, :user_id, :production_name, :purchase_date, :coffee_beans_type, :farm_name, :product_report, :product_category_id, :coffee_blend_id, :degree_of_roasting_id, :country_of_origin_id, :carefully_selected_method_id, :sweetness_id, :acidity_id, :bitter_taste_id, :flavor_id, :image

  with_options presence: true do
    validates :shop_name
    validates :production_name
    validates :purchase_date
    validates :image
    validates :user_id
  end

  validates :prefectures_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :product_category_id, numericality: { other_than: 1, message: "can't be blank" }

  def save
    shop = Shop.create(shop_name: shop_name, shi_ku_gun: shi_ku_gun, chome_banchi: chome_banchi, shop_url: shop_url, prefectures_id: prefectures_id, user_id: user_id)
    Production.create(production_name: production_name, purchase_date: purchase_date, coffee_beans_type: coffee_beans_type, farm_name: farm_name, product_report: product_report, product_category_id: product_category_id,
      coffee_blend_id: coffee_blend_id, degree_of_roasting_id: degree_of_roasting_id, country_of_origin_id: country_of_origin_id, carefully_selected_method_id: carefully_selected_method_id, sweetness_id: sweetness_id,
      acidity_id: acidity_id, bitter_taste_id: bitter_taste_id, flavor_id: flavor_id, image: image, shop_id: shop.id, user_id: user_id)
  end
end