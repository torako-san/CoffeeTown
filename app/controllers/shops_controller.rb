class ShopsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
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
    params.require(:shop_production).permit(:shop_name, :shi_ku_gun, :chome_banchi, :shop_url, :prefectures, :production_name, :purchase_date, :coffee_beans_type, :farm_name, :product_report, :product_category, :coffee_blend, :degree_of_roasting, :country_of_origin, :carefully_selected_method, :sweetness, :acidity, :bitter_taste, :flavor).merge(user_id: current_user.id)
  end
  
end