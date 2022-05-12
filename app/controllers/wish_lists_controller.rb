class WishListsController < ApplicationController
  def create
    Wish_Lists.create(user_id: current_user.id, production_id: params[:id])
    redirect_to shop_production_path
  end

  def destroy
    Wish_Lists.find_by(user_id: current_user.id, production_id: params[:id]).destroy
    redirect_to shop_production_path
  end
end
