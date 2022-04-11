class ShopsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @shop = Shop.all
    @shops = @shop.production
  end

  def new
    @shop_production = ShopProduction.new
  end

  def create
    @shop_production = ShopProduction.new(shop_params)
    if @shop_production.valid?
      @shop_production.save
      redirect_to root_path
    else
      render :new
    end
  end

  def shop_params
    params.require(:shop_production).permit(:shop_name, :shi_ku_gun, :chome_banchi, :shop_url, :prefectures_id, :production_name,
       :purchase_date, :coffee_beans_type, :farm_name, :product_report, :product_category_id, :coffee_blend_id, :degree_of_roasting_id, 
       :country_of_origin_id, :carefully_selected_method_id, :sweetness_id, :acidity_id, :bitter_taste_id, :flavor_id, :image ).merge(user_id: current_user.id)
  end
  
end