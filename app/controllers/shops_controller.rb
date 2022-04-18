class ShopsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_shop, only: [:edit, :update, :show]

  def index
    @shop = Shop.all.order('created_at DESC')
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

  def show
  end

  def edit
    unless @shop.user_id == current_user.id 
      redirect_to root_path
    end
  end

  def destroy
    if @shop.user_id == current_user.id
      @shop.destroy
    end
      redirect_to root_path
  end

  def update
    if @shop.update(shop_data_params)
      redirect_to shop_path
    else
      render :edit
    end
  end

  private
  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_data_params
    params.require(:shop).permit(:shop_name, :shi_ku_gun, :chome_banchi, :shop_url, :prefectures_id ).merge(user_id: current_user.id)
  end

  def shop_params
    params.require(:shop_production).permit(:shop_name, :shi_ku_gun, :chome_banchi, :shop_url, :prefectures_id, :production_name,
       :purchase_date, :coffee_beans_type, :farm_name, :product_report, :product_category_id, :coffee_blend_id, :degree_of_roasting_id, 
       :country_of_origin_id, :carefully_selected_method_id, :sweetness_id, :acidity_id, :bitter_taste_id, :flavor_id, :image ).merge(user_id: current_user.id)
  end
  
end