class WishListsController < ApplicationController
  before_action :product_params_params

  def create
    WishList.create(user_id: current_user.id, production_id: params[:id])
    redirect_to shop_production_path(:shop_id)
  end

  def destroy
    WishList.find_by(user_id: current_user.id, production_id: params[:id]).destroy
    redirect_to shop_production_path(:shop_id)
  end

  private
  
  def product_params
    @production = Production.find(params[:id])
  end
end