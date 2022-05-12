class WishListsController < ApplicationController
  def create
    WishList.create(user_id: current_user.id, production_id: params[:id])
    redirect_to shop_production_path(:shop_id)
  end

  def destroy
    WishList.find_by(user_id: current_user.id, production_id: params[:id]).destroy
    redirect_to shop_production_path(:shop_id)
  end
end
