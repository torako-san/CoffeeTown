class ShopProduction
  include ActiveModel::Model
  attr_accessor :shop_name, :shi_ku_gun, :chome_banchi, :shop_url, :prefectures, :user_id, :production_name, :purchase_date, :coffee_beans_type, :farm_name, :product_report, :product_category, :coffee_blend, :degree_of_roasting, :country_of_origin, :carefully_selected_method, :sweetness, :acidity, :bitter_taste, :flavor, :shop_id, :image

  with_options presence: true do
    validates :shop_name
    validates :shop_url
    validates :production_name
    validates :purchase_date
  end

  with_options numericality: {other_than: 1, message: "can't be blank"}  do
    validates :prefectures 
    validates :product_category
  end

  def save
    shop = Shop.create(shop_name: shop_name, shi_ku_gun: shi_ku_gun, chome_banchi: chome_banchi, shop_url: shop_url, prefectures: prefectures, user_id: user_id)
    Productions.create(production_name: production_name, purchase_date: purchase_date, coffee_beans_type: coffee_beans_type, farm_name: farm_name, product_report: product_report, product_category: product_category, coffee_blend: coffee_blend, degree_of_roasting: degree_of_roasting, country_of_origin: country_of_origin, carefully_selected_method: carefully_selected_method, sweetness: sweetness, acidity: acidity, bitter_taste: bitter_taste, flavor: flavor, shop_id: shop_id, user_id: user_id)
  end
end