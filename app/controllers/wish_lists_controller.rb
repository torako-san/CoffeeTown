class WishListsController < ApplicationController
  def create
    Wish_Lists.create(user_id: current_user.id, production_id: params[:id])
    redirect_to production_path
  end
end
